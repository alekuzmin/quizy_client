import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quizy/feature/quiz/domain/entity/question/question_entity.dart';
import 'package:quizy/feature/quiz/domain/quiz_repository.dart';

import '../../entity/quiz/quiz_entity.dart';

part 'detail_quiz_state.dart';
part 'detail_quiz_cubit.freezed.dart';

class DetailQuizCubit extends Cubit<DetailQuizState> {
  DetailQuizCubit(this.quizRepository, this.id) : super(const DetailQuizState());
  final QuizRepository quizRepository;
  final String id;

  Future<void> fetchQuiz() async {
    emit(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));
    await quizRepository.fetchQuiz(id).then((value) {

      emit(state.copyWith(
         quizEntity: value,
          asyncSnapshot:
          const AsyncSnapshot.withData(ConnectionState.done, true)));
    }).catchError((error) {
      addError(error);
    });
  }

  Future<void> deleteQuiz() async {
    emit(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));
    await quizRepository.deleteQuiz(id).then((value) {
      emit(state.copyWith(
          asyncSnapshot:
          const AsyncSnapshot.withData(ConnectionState.done, "Опрос успешно удалён.")));
    }).catchError((error) {
      addError(error);
    });
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    emit(state.copyWith(
        asyncSnapshot: AsyncSnapshot.withError(ConnectionState.done, error)));
    super.addError(error, stackTrace);
  }
}