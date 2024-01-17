import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:quizy/feature/quiz/domain/quiz_repository.dart';
import '../entity/quiz/quiz_entity.dart';


part 'quiz_state.dart';
part 'quiz_cubit.freezed.dart';
part 'quiz_cubit.g.dart';

class QuizCubit extends HydratedCubit<QuizState>{
  QuizCubit(this.quizRepository): super(const QuizState(asyncSnapshot: AsyncSnapshot.nothing()));

  final QuizRepository quizRepository;

  Future<void> fetchPosts() async {
    await quizRepository.fetchQuizs().then((value) {
      final Iterable iterable = value;
      emit(state.copyWith(
          quizList: iterable.map((e) => QuizEntity.fromJson(e)).toList(),
          asyncSnapshot: const AsyncSnapshot.withData(ConnectionState.done, true)));
    }).catchError((error) {
      addError(error);
    });
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    emit(state.copyWith(asyncSnapshot: AsyncSnapshot.withError(ConnectionState.done, error)));
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
}