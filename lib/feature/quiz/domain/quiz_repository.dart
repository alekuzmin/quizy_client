abstract class QuizRepository {
  Future fetchQuizs();
  Future fetchQuiz(String id);
  Future createQuiz(String name);
  Future deleteQuiz(String id);


}