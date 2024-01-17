import 'package:injectable/injectable.dart';
import 'package:quizy/app/domain/app_api.dart';

import '../domain/auth_repository.dart';
import '../domain/entities/user_entity/user_entity.dart';
import 'dto/user_dto.dart';

@Injectable(as: AuthRepository)
@prod
class NetworkAuthRepository implements AuthRepository {
  final AppApi api;

  NetworkAuthRepository(this.api);

  @override
  Future<UserEntity> getProfile() async {
    try {
      final response = await api.getProfile();
      return UserDto.fromJson(response.data["data"]).toEntity();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<UserEntity> refreshToken({String? refreshToken}) async {
    try {
      final response = await api.refreshToken(refreshToken: refreshToken);
      return UserDto.fromJson(response.data["data"]).toEntity();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<UserEntity> signIn(
      {required String password, required String login}) async {
    try {
      final response = await api.signIn(password: password, login: login);
      return UserDto.fromJson(response.data["data"]).toEntity();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<UserEntity> signUp({
    required String password,
    required String login,
    required String email,
    required String firstName,
    required String lastName,
    required String middleName,
    required String role,
  }) async {
    try {
      final response = await api.signUp(password: password, login: login, email: email, firstName: firstName, lastName: lastName, middleName: middleName, role: role);
      return UserDto.fromJson(response.data["data"]).toEntity();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future updatePassword(
      {required String oldPassword, required String newPassword}) {
    // TODO: implement updatePassword
    throw UnimplementedError();
  }

  @override
  Future<UserEntity> updateUser({
    String? email,
    String? firstName,
    String? lastName,
    String? middleName,
    String? role,
  }) async {
    try {
      final response = await api.updateUser(email: email, firstName: firstName, lastName: lastName, middleName: middleName, role: role);
      return UserDto.fromJson(response.data["data"]).toEntity();
    } catch (_) {
      rethrow;
    }
  }
}
