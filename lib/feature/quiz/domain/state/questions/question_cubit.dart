import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'package:quizy/feature/auth/domain/auth_state/auth_cubit.dart';
import '../../entity/question/question_entity.dart';
import '../../question_repository.dart';

part 'question_state.dart';
part 'question_cubit.freezed.dart';
part 'question_cubit.g.dart';

class QuestionCubit extends HydratedCubit<QuestionState>{
    QuestionCubit(this.questionRepository, this.authCubit, this.quizId)
        : super(const QuestionState(asyncSnapshot: AsyncSnapshot.nothing())) {
        authSubscription = authCubit.stream.listen((event) {
            event.mapOrNull(
                authorized: (value) => fetchQuestions(),
                notAuthorized: (value) => logOut(),
            );
        });
    }
    final QuestionRepository questionRepository;
    final AuthCubit authCubit;
    final String quizId;
    late final StreamSubscription authSubscription;


    Future<void> fetchQuestions() async {
        emit(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));
        await questionRepository.fetchQuestions(quizId).then((value) {
            final Iterable iterable = value;
            emit(state.copyWith(
                questionsList: iterable.map((e) => QuestionEntity.fromJson(e)).toList(),
                asyncSnapshot:
                const AsyncSnapshot.withData(ConnectionState.done, true)));
        }).catchError((error) {
            addError(error);
        });
    }

    Future<void> addQuestion(String text, String quizId) async {
      await questionRepository.addQuestion(text, quizId).then((value) {
        addQuestion(text, quizId);
      }).catchError((error) {
        addError(error);
      });
    }

    void logOut() {
      emit(state.copyWith(asyncSnapshot: const AsyncSnapshot.nothing(),
        questionsList: [],
      ));
    }

    @override
    void addError(Object error, [StackTrace? stackTrace]) {
        emit(state.copyWith(
            asyncSnapshot: AsyncSnapshot.withError(ConnectionState.done, error)));
        super.addError(error, stackTrace);
    }

  @override
  QuestionState? fromJson(Map<String, dynamic> json) {
        return QuestionState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(QuestionState state) {
      return state.toJson();
  }

    @override
    Future<void> close() {
        authSubscription.cancel();
        return super.close();
    }
}