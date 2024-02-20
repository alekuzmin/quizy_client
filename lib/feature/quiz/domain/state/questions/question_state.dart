part of 'question_cubit.dart';

@freezed
class QuestionState with _$QuestionState {
  const factory QuestionState({
    @JsonKey(ignore: true) AsyncSnapshot? asyncSnapshot,
    @Default([]) List<QuestionEntity> questionsList,

  }) =_QuestionState;

  factory QuestionState.fromJson(Map<String, dynamic> json) =>
      _$QuestionStateFromJson(json);
}