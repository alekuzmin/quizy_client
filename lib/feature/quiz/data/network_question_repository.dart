import 'package:injectable/injectable.dart';

import '../../../app/domain/app_api.dart';
import '../domain/question_repository.dart';

@Injectable(as: QuestionRepository)
class NetworkQuestionRepository implements QuestionRepository {
  final AppApi api;

  NetworkQuestionRepository(this.api);

  @override
  Future fetchQuestions(quizId) async {
    try{
      final response = await api.fetchQuestions(quizId);
      return response.data;
    } catch (_){
      rethrow;
    }
  }

  @override
  Future<String> addQuestion(text, quizId) async {
    try{
      final response = await api.addQuestion(text: text, quizId: quizId);
      return response.data["message"];
    } catch (_){
      rethrow;
    }
  }

}