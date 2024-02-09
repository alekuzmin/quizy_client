import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:quizy/feature/auth/domain/auth_state/auth_cubit.dart';
import 'package:quizy/feature/quiz/domain/quiz_repository.dart';
import '../entity/quiz/quiz_entity.dart';

part 'quiz_state.dart';

part 'quiz_cubit.freezed.dart';

part 'quiz_cubit.g.dart';

class QuizCubit extends HydratedCubit<QuizState> {
  QuizCubit(this.quizRepository, this.authCubit)
      : super(const QuizState(asyncSnapshot: AsyncSnapshot.nothing())) {
    authSubscription = authCubit.stream.listen((event) {
      event.mapOrNull(
        authorized: (value) => fetchQuizs(),
        notAuthorized: (value) => logOut(),
      );
    });
  }

  final QuizRepository quizRepository;
  final AuthCubit authCubit;
  late final StreamSubscription authSubscription;

  Future<void> fetchQuizs() async {
    emit(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));
    await quizRepository.fetchQuizs().then((value) {
      final Iterable iterable = value;
      emit(state.copyWith(
          quizList: iterable.map((e) => QuizEntity.fromJson(e)).toList(),
          asyncSnapshot:
          const AsyncSnapshot.withData(ConnectionState.done, true)));
    }).catchError((error) {
      addError(error);
    });
  }

  Future<void> createQuiz(String name) async {
    await quizRepository.createQuiz(name).then((value) {
      fetchQuizs();
    }).catchError((error) {
      addError(error);
    });
  }

  void logOut() {
    emit(state.copyWith(asyncSnapshot: const AsyncSnapshot.nothing(),
      quizList: [],
    ));
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    emit(state.copyWith(
        asyncSnapshot: AsyncSnapshot.withError(ConnectionState.done, error)));
    super.addError(error, stackTrace);
  }

  @override
  QuizState? fromJson(Map<String, dynamic> json) {
    return QuizState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(QuizState state) {
    return state.toJson();
  }

  @override
  Future<void> close() {
    authSubscription.cancel();
    return super.close();
  }

}
