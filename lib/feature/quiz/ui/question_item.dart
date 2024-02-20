import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizy/feature/quiz/domain/entity/question/question_entity.dart';

class QuestionItem extends StatelessWidget {
  const QuestionItem({super.key, required this.questionEntity});

  final QuestionEntity questionEntity;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {
      //   Navigator.of(context).push(MaterialPageRoute(
      //       builder: (context) => DetailQuizScreen(id: quizEntity.id.toString())));
      // },
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
                  child: Text(questionEntity.text,
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