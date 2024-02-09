part of 'detail_quiz_cubit.dart';

@freezed
class DetailQuizState with _$DetailQuizState {
  const factory DetailQuizState({
@Default(AsyncSnapshot.nothing()) AsyncSnapshot asyncSnapshot,
    QuizEntity? quizEntity,
}) = _DetailQuizState;
}