import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizy/feature/quiz/ui/question_item.dart';

import '../../../app/ui/app_loader.dart';
import '../domain/state/questions/question_cubit.dart';

class QuestionList extends StatelessWidget{
  const QuestionList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QuestionCubit, QuestionState>(
      listener: (context, state) {

      },
      builder: (context, state) {
        if(state.questionsList.isNotEmpty){
          return ListView.builder(
              shrinkWrap: true,
              itemCount: state.questionsList.length,
              itemBuilder: (context, index) {
                return QuestionItem(questionEntity: state.questionsList[index]);
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