import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:quizy/app/domain/app_api.dart';

import '../domain/app_config.dart';
import 'auth_interceptor.dart';

@Singleton(as: AppApi)
class DioAppApi implements AppApi {

  late final Dio dio;

  DioAppApi(AppConfig appConfig){
    final options = BaseOptions(
      baseUrl: appConfig.baseUrl,
      connectTimeout: 15000,
    );
    dio = Dio(options);
    if(kDebugMode) dio.interceptors.add(PrettyDioLogger());
    dio.interceptors.add(AuthInterceptor());
  }


  @override
  Future<Response> getProfile() {
    try {
      return dio.get("/auth/user");
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Response> refreshToken({String? refreshToken}) {
    try {
      return dio.post("/auth/token/$refreshToken");
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Response> signIn({required String password, required String login}) {
    try {
      return dio.post("/auth/token", data: {"login": login, "password": password});
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Response> signUp({required String password, required String login, required String email, required String firstName, required String lastName, required String middleName, required String role}) {
    try {
      return dio.put("/auth/token", data: {
        "login": login,
        "password": password,
        "email": email,
        "role": role,
        "firstName": firstName,
        "lastName": lastName,
        "middleName": middleName,
      });
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Response> updatePassword({required String oldPassword, required String newPassword}) {
    // TODO: implement updatePassword
    throw UnimplementedError();
  }

  @override
  Future<Response> updateUser({String? email, String? firstName, String? lastName, String? middleName, String? role}) {
    try {
      return dio.post("/auth/user", data: {
        "email": email,
        "role": role,
        "firstName": firstName,
        "lastName": lastName,
        "middleName": middleName,
      });
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future request(String path) {
    try {
      return dio.request(path);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future fetch(RequestOptions requestOptions) {
    return  dio.fetch(requestOptions);
  }

  @override
  Future fetchQuizs() {
    return dio.get("/data/quizs");
  }
  
}