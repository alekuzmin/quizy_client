import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizy/app/di/init_di.dart';
import 'package:quizy/app/domain/error_entity.dart';
import 'package:quizy/app/ui/app_loader.dart';
import 'package:quizy/app/ui/components/app_dialog.dart';
import 'package:quizy/feature/quiz/domain/entity/quiz/quiz_entity.dart';
import 'package:quizy/feature/quiz/domain/quiz_repository.dart';
import 'package:quizy/feature/quiz/domain/state/detail_quiz/detail_quiz_cubit.dart';
import 'package:quizy/feature/quiz/ui/detail_quiz_tab.dart';
import 'package:quizy/feature/quiz/ui/employee_quiz_tab.dart';
import 'package:quizy/feature/quiz/ui/scheduler_quiz_tab.dart';

import '../domain/state/quiz_cubit.dart';

class DetailQuizScreen extends StatelessWidget {
  const DetailQuizScreen({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          DetailQuizCubit(locator.get<QuizRepository>(), id)..fetchQuiz(),
      child: const _DetailQuizView(),
    );
  }
}

class _DetailQuizView extends StatelessWidget {
  const _DetailQuizView();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DetailQuizCubit, DetailQuizState>(
      builder: (context, state) {
        if (state.asyncSnapshot.connectionState ==
            ConnectionState.waiting) {
          return const AppLoader();
        }
        if (state.quizEntity != null) {
          return _DetailQuizItem(
            quizEntity: state.quizEntity!,
          );
        }
        return const Center(
          child: Text("Что-то пошло не так..."),
        );
      },
      listener: (context, state) {
        if (state.asyncSnapshot.hasError) {
          AppDialog(
            value1: ErrorEntity.fromException(state.asyncSnapshot.error)
                .toString(),
            onPressed: (String v1) {},
          );
        }
      },
    );
  }
}

class _DetailQuizItem extends StatelessWidget {
  const _DetailQuizItem({required this.quizEntity});

  TabBar get _tabBar => const TabBar(
    tabs: [
      Tab(icon: Icon(Icons.question_mark_sharp),),
      Tab(icon: Icon(Icons.people),),
      Tab(icon: Icon(Icons.calendar_today),),
      Tab(icon: Icon(Icons.check),),
    ],
  );

  final QuizEntity quizEntity;

  @override
  Widget build(BuildContext context) {
    return
      DefaultTabController(
          length: 4,
          child: TooltipVisibility(
            visible: false,
            child: Scaffold(
              appBar: AppBar(
                bottom: PreferredSize(
                  preferredSize: _tabBar.preferredSize,
                  child: ColoredBox(
                    color: Theme.of(context).colorScheme.onPrimary,
                    child: _tabBar,
                  ),
                ),
                title: Text(quizEntity.name,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    )
                ),
                backgroundColor: Theme.of(context).colorScheme.primary,
                iconTheme:
                IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.play_arrow),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.save),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      context.read<DetailQuizCubit>().deleteQuiz().then((_) {
                        context.read<QuizCubit>().fetchQuizs();
                        Navigator.of(context).pop();
                      });
                    },
                  ),
                ],
              ),
              body: const TabBarView(
                children: [
                  DetailQuizTab(),
                  EmployeeQuizTab(),
                  SchedulerQuizTab(),
                  Icon(Icons.directions_bike)
                ],
              ),
            ),
          ),
        );
    //   ListView( children: [
    //   Text("Name: ${quizEntity.name}" )
    // ],);
  }
}


