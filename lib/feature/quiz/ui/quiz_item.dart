import 'package:flutter/material.dart';
import 'package:quizy/feature/quiz/domain/entity/quiz/quiz_entity.dart';

class QuizItem extends StatelessWidget {
  const QuizItem({super.key, required this.quizEntity});

  final QuizEntity quizEntity;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.secondary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          Text(quizEntity.name,
      style: Theme.of(context).textTheme.titleLarge!.copyWith(
        color: Theme.of(context).colorScheme.onPrimary,)
          ),
        ],
      ),
    );
  }
}
