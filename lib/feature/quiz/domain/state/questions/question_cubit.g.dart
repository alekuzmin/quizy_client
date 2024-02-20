// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionStateImpl _$$QuestionStateImplFromJson(Map<String, dynamic> json) =>
    _$QuestionStateImpl(
      questionsList: (json['questionsList'] as List<dynamic>?)
              ?.map((e) => QuestionEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$QuestionStateImplToJson(_$QuestionStateImpl instance) =>
    <String, dynamic>{
      'questionsList': instance.questionsList,
    };
