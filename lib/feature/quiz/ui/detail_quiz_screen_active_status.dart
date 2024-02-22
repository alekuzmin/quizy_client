import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizy/feature/quiz/ui/detail_quiz_tab.dart';
import 'package:quizy/feature/quiz/ui/employee_quiz_tab.dart';
import 'package:quizy/feature/quiz/ui/history_quiz_tab.dart';
import 'package:quizy/feature/quiz/ui/scheduler_quiz_tab.dart';

class DetailQuizScreenActiveStatus extends StatelessWidget {
  const DetailQuizScreenActiveStatus({super.key});

  @override
  Widget build(BuildContext context) {
      return const _DetailQuizItem();
  }
}

class _DetailQuizItem extends StatelessWidget {
  const _DetailQuizItem();

  TabBar get _tabBar => const TabBar(
    tabs: [
      Tab(icon: Icon(Icons.question_mark_sharp),),
      Tab(icon: Icon(Icons.people),),
      Tab(icon: Icon(Icons.calendar_today),),
      Tab(icon: Icon(Icons.check),),
    ],
  );



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
                title: Text("Опрос удовлетворенности",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    )
                ),
                backgroundColor: Theme.of(context).colorScheme.primary,
                iconTheme:
                IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.pause),
                    onPressed: () {},
                  ),
                  // IconButton(
                  //   icon: const Icon(Icons.save),
                  //   onPressed: () {},
                  // ),
                  IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {},
                  ),
                ],
              ),
              body: const TabBarView(
                children: [
                  DetailQuizTab(),
                  EmployeeQuizTab(),
                  SchedulerQuizTab(),
                  HistoryQuizTab(),
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


