// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizStateImpl _$$QuizStateImplFromJson(Map<String, dynamic> json) =>
    _$QuizStateImpl(
      quizList: (json['quizList'] as List<dynamic>?)
              ?.map((e) => QuizEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$QuizStateImplToJson(_$QuizStateImpl instance) =>
    <String, dynamic>{
      'quizList': instance.quizList,
    };
