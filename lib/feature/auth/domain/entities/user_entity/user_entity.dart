import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@Freezed()
class UserEntity with _$UserEntity {
  const factory UserEntity ({
    required String email,
    required String firstName,
    required String lastName,
    String? middleName,
    required String id,
    required String login,
    required String role,
    String? accessToken,
    String? refreshToken,
    @JsonKey(includeFromJson: false, includeToJson: false, includeIfNull: false)  AsyncSnapshot? userState,

}) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}