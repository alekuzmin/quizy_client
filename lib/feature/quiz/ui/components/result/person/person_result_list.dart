import 'package:flutter/cupertino.dart';
import 'package:quizy/feature/quiz/ui/components/result/person/person_result.dart';

class PersonResultList extends StatelessWidget{
  const PersonResultList({super.key});


  @override
  Widget build(BuildContext context) {
      return ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: const [
          PersonResult(question: "1. Интересность задач", comment: "Интересные, потому что детективные", score: "8",),
          PersonResult(question: "2. Сложность задач", comment: "нормально", score: "7",),
          PersonResult(question: "3. Достаточность обратной связи", comment: "нет систематической обратной связи", score: "6",),
          PersonResult(question: "4. Удовлетворенность денежным вознаграждением", comment: "", score: "5",),
          PersonResult(question: "5. Отношения в команде", comment: "не 10, потому что есть один персонаж...", score: "9",),
          PersonResult(question: "6. Планы развития", comment: "есть", score: "8",),
        ],
      );
  }

}