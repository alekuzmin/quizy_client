import 'package:flutter/material.dart';
import 'package:quizy/feature/quiz/domain/entity/quiz/quiz_entity.dart';
import 'package:quizy/feature/quiz/ui/detail_quiz_screen.dart';

class QuizItem extends StatelessWidget {
  const QuizItem({super.key, required this.quizEntity});

  final QuizEntity quizEntity;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailQuizScreen(id: quizEntity.id.toString())));
      },
      child: Card(
        //color: Theme.of(context).colorScheme.secondary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Row(
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              //mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(quizEntity.name,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Colors.black54,
                          )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
