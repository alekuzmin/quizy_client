import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/user_entity/user_entity.dart';

part 'user_dto.g.dart';

@JsonSerializable()
class UserDto {
  final dynamic id;
  final dynamic login;
  final dynamic email;
  final dynamic role;
  final dynamic lastName;
  final dynamic firstName;
  final dynamic middleName;
  final dynamic accessToken;
  final dynamic refreshToken;

  UserDto(
    this.id,
    this.login,
    this.email,
    this.role,
    this.lastName,
    this.firstName,
    this.middleName,
    this.accessToken,
    this.refreshToken,
  );

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserDtoToJson(this);

  UserEntity toEntity() {
    return UserEntity(
      email: email.toString(),
      firstName: firstName.toString(),
      lastName: lastName.toString(),
      middleName: middleName.toString(),
      id: id.toString(),
      login: login.toString(),
      role: role.toString(),
      accessToken: accessToken.toString(),
      refreshToken: refreshToken.toString()
    );
  }
}
