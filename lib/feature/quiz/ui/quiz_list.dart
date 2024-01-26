import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizy/feature/quiz/domain/state/quiz_cubit.dart';
import 'package:quizy/feature/quiz/ui/quiz_item.dart';

import '../../../app/ui/app_loader.dart';

class QuizList extends StatelessWidget {
  const QuizList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QuizCubit, QuizState>(
      listener: (context, state) {

      },
      builder: (context, state) {
        if(state.quizList.isNotEmpty){
          return ListView.builder(
            shrinkWrap: true,
              itemCount: state.quizList.length,
              itemBuilder: (context, index) {
                return QuizItem(quizEntity: state.quizList[index]);
              });
        }
         if(state.asyncSnapshot?.connectionState == ConnectionState.waiting){
           return const AppLoader();
         }
        return const SizedBox.shrink();

      },
    );
  }
}
