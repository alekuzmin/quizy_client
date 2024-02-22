import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizy/app/ui/components/app_dialog_question.dart';

import 'components/questions_list.dart';


class DetailQuizTab extends StatelessWidget {
  const DetailQuizTab({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.all(16),
      //width: 500,
      //color: Colors.black.withOpacity(0.15),
      child: Material(
        //color: Colors.white,
        elevation: 24,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: SingleChildScrollView(
            //scrollDirection: Axis.horizontal,
            child: SizedBox(
              //height: MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top,
              child: Column(
                //mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TextButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) => AppDialogQuestion(
                                            value1: "Текст вопроса",
                                            onPressed: (value1) {
                                              //context
                                                  //.read<QuizCubit>()
                                                  //.createQuiz(value1);
                                            },
                                            )
                                    );
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor:
                                    Theme.of(context).colorScheme.primary,
                                  ),
                                  child: Text(
                                    '+ Добавить вопрос',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                    ),
                                  )
                              ),
                            ),
                          ),
                  const QuestionsList(),
                  //const QuestionList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}