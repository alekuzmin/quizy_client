import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizy/feature/quiz/domain/entity/quiz/quiz_entity.dart';

class QuizItem extends StatelessWidget {
  const QuizItem({super.key, required this.quizEntity});

  final QuizEntity quizEntity;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        children: [
          Text(quizEntity.name),
        ],
      ),
    );
  }
}
