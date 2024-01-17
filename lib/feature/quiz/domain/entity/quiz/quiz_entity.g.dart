// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizEntityImpl _$$QuizEntityImplFromJson(Map<String, dynamic> json) =>
    _$QuizEntityImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      status: json['status'] as String,
      userId: json['userId'] as int?,
    );

Map<String, dynamic> _$$QuizEntityImplToJson(_$QuizEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'userId': instance.userId,
    };
