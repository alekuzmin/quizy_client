// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionEntityImpl _$$QuestionEntityImplFromJson(Map<String, dynamic> json) =>
    _$QuestionEntityImpl(
      id: json['id'] as int,
      quizId: json['quizId'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$QuestionEntityImplToJson(
        _$QuestionEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quizId': instance.quizId,
      'text': instance.text,
    };
