import 'package:injectable/injectable.dart';
import 'package:quizy/app/domain/app_api.dart';
import 'package:quizy/feature/quiz/domain/entity/quiz/quiz_entity.dart';
import 'package:quizy/feature/quiz/domain/quiz_repository.dart';

@Injectable(as: QuizRepository)
class NetworkQuizRepository implements QuizRepository{
  final AppApi api;

  NetworkQuizRepository(this.api);


  @override
  Future<Iterable> fetchQuizs() async {
    try{
      final response = await api.fetchQuizs();
      return response.data;
    } catch (_){
      rethrow;
    }
  }

  @override
  Future<QuizEntity> fetchQuiz(String id) async {
    try{
      final response = await api.fetchQuiz(id);
      return QuizEntity.fromJson(response.data["data"]);
    } catch (_){
      rethrow;
    }
  }

  @override
  Future<String> createQuiz(String name) async {
    try{
      final response = await api.createQuiz(name);
      return response.data["message"];
    } catch (_){
      rethrow;
    }
  }

  @override
  Future deleteQuiz(String id) async {
    try{
      await api.deleteQuiz(id);
    } catch (_){
      rethrow;
    }
  }

}