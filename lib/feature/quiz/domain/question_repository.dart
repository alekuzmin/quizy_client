abstract class QuestionRepository{
  Future fetchQuestions(quizId);
  Future addQuestion(text, quizId);
}