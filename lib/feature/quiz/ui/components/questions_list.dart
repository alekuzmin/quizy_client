import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizy/feature/quiz/ui/components/question.dart';


class QuestionsList extends StatelessWidget{
  const QuestionsList({super.key});



  @override
  Widget build(BuildContext context) {
   return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: const [
        Question(text: "1. Интересность задач"),
        Question(text: "2. Сложность задач"),
        Question(text: "3. Достаточность обратной связи"),
        Question(text: "4. Удовлетворенность денежным вознаграждением"),
        Question(text: "5. Отношения в команде"),
        Question(text: "6. Планы развития"),
      ],
    );
  }

}