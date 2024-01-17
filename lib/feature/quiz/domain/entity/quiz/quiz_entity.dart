import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_entity.freezed.dart';
part 'quiz_entity.g.dart';

@freezed
class QuizEntity with _$QuizEntity {
  const factory QuizEntity({
    required int id,
    required String name,
    required String status,
    int? userId,
  }) = _QuizEntity;

  factory QuizEntity.fromJson(Map<String, dynamic> json) =>
      _$QuizEntityFromJson(json);
}
