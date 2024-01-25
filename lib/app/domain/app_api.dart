import 'package:dio/dio.dart';

abstract class AppApi{
  Future<dynamic> signUp({
    required String password,
    required String login,
    required String email,
    required String firstName,
    required String lastName,
    required String middleName,
    required String role
  });

  Future<dynamic> signIn({
    required String password,
    required String login
  });

  Future<dynamic> getProfile();

  Future<dynamic> updateUser({
    String? email,
    String? firstName,
    String? lastName,
    String? middleName,
    String? role
  });

  Future<dynamic> updatePassword({
    required String oldPassword,
    required String newPassword
  });

  Future<dynamic> refreshToken({
    String? refreshToken
  });

  Future<dynamic> request(String path);

  Future<dynamic> fetch(RequestOptions requestOptions);

  Future<dynamic> fetchQuizs();

  Future<dynamic> createQuiz(String name);
}