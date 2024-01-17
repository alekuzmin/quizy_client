part of 'quiz_cubit.dart';

@freezed
class QuizState with _$QuizState {
  const factory QuizState({
    @JsonKey(ignore: true)AsyncSnapshot? asyncSnapshot,
    @Default([]) List<QuizEntity> quizList,

}) =_QuizState;

  factory QuizState.fromJson(Map<String, dynamic> json) =>_$QuizStateFromJson(json);
}