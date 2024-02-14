import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/ui/components/app_dialog.dart';
import '../domain/state/quiz_cubit.dart';

class EmployeeQuizTab extends StatelessWidget {
  const EmployeeQuizTab({super.key});


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
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: OverflowBar(
                      spacing: 1,
                      overflowAlignment: OverflowBarAlignment.start,
                      children: <Widget>[
                        TextButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) => AppDialog(
                                      value1: "Выбрать группу сотрудников",
                                      onPressed: (value1) {
                                        //context
                                        //.read<QuizCubit>()
                                        //.createQuiz(value1);
                                      }));
                            },
                            style: TextButton.styleFrom(
                              backgroundColor:
                              Theme.of(context).colorScheme.primary,
                            ),
                            child: Text(
                              '+ добавить группу сотрудников',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimary,
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                //const QuizList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

}