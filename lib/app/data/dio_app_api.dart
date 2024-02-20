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
  late final Dio dioTokens;

  DioAppApi(AppConfig appConfig){
    final options = BaseOptions(
      baseUrl: appConfig.baseUrl,
      connectTimeout: 15000,
    );
    dio = Dio(options);
    dioTokens = Dio(options);
    if(kDebugMode) {
      dio.interceptors.add(PrettyDioLogger());
      dioTokens.interceptors.add(PrettyDioLogger());
    };
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
      return dioTokens.post("/auth/token/$refreshToken");
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
  Future<Response> request(String path) {
    try {
      return dio.request(path);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Response> fetch(RequestOptions requestOptions) {
    return  dioTokens.fetch(requestOptions);
  }

  @override
  Future<Response> fetchQuizs() {
    return dio.get("/data/quizs");
  }

  @override
  Future<Response> fetchQuiz(String id) {
    return dio.get("/data/quizs/$id");
  }

  @override
  Future<Response> createQuiz(String name) {
   return dio.post("/data/quizs", data: {"name": name, "status": "edit"});
  }

  @override
  Future<Response> deleteQuiz(String id) {
    return dio.delete("/data/quizs/$id");
  }

  @override
  Future<Response> fetchQuestions(String quizId) {
      return dio.get("/data/question/$quizId");
  }

  @override
  Future<Response> addQuestion({String? text, String? quizId}) {
    return dio.post("/data/question", data: {"text": text, "quizId": quizId});
  }
  
}