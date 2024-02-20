import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:quizy/app/ui/components/app_dialog.dart';
import 'package:quizy/feature/auth/ui/settings_screen.dart';
import 'package:quizy/feature/quiz/domain/state/quiz_cubit.dart';
import 'package:quizy/feature/quiz/ui/quiz_list.dart';

import '../../../app/ui/components/app_drawer.dart';
import '../../auth/domain/auth_state/auth_cubit.dart';
import '../../auth/domain/entities/user_entity/user_entity.dart';
import '../../quiz/ui/detail_quiz_screen.dart';
import '../../quiz/ui/detail_quiz_screen_edit_status.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.userEntity});

  final UserEntity userEntity;

  @override
  Widget build(BuildContext context) {
    return TooltipVisibility(
      visible: false,
      child: Scaffold(
          appBar: AppBar(
            title: Text("Мои опросы",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    )),
            backgroundColor: Theme.of(context).colorScheme.primary,
            iconTheme:
                IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SettingsScreen(),
                        ));
                    context.read<AuthCubit>().getProfile();
                  },
                  icon: CircleAvatar(
                    backgroundColor: Colors.orangeAccent,
                    child: Text(
                      "${userEntity.lastName.split("").first}${userEntity.firstName.split("").first}",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )),
            ],
          ),
          drawer: AppDrawer(context),
          body: Container(
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
                    //crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
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
                                              value1: "Название опроса",
                                              onPressed: (value1) {
                                                context
                                                    .read<QuizCubit>()
                                                    .createQuiz(value1);
                                              }));
                                    },
                                    style: TextButton.styleFrom(
                                      backgroundColor:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                    child: Text(
                                      '+ Добавить опрос',
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
                      ),
                      ListView(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const DetailQuizScreenEditStatus()));
                            },
                            child: Card(
                              //color: Theme.of(context).colorScheme.secondary,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              child: Column(
                                //mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    //mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.all(16),
                                        child: Text("Опрос удовлетворенности",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleLarge!
                                                .copyWith(
                                                  color: Colors.black54,
                                                )
                                        ),
                                      ),

                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 16),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                              color: Colors.redAccent,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8.0))
                                          ),
                                          child: const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text("ACTIVE")
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: LinearPercentIndicator(
                                          width: 140.0,
                                          lineHeight: 18.0,
                                          percent: 0.6,
                                          leading: Text("Пройдено:", style: Theme.of(context)
                                              .textTheme
                                              .titleSmall
                                              ?.copyWith(
                                            color: Colors.black54,)),
                                          center: const Text("60.0%"),
                                          backgroundColor: Colors.grey,
                                          progressColor: Colors.orange,
                                        ),
                                      ),
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                  const DetailQuizScreenEditStatus()));
                            },
                            child: Card(
                              //color: Theme.of(context).colorScheme.secondary,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              child: Column(
                                //mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    //mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding:
                                        const EdgeInsets.all(16),
                                        child: Text("Опрос настроения",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleLarge!
                                                .copyWith(
                                              color: Colors.black54,
                                            )),
                                      ),


                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 16,bottom: 16),
                                        child: Container(
                                            decoration: const BoxDecoration(
                                                color: Colors.orange,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(8.0))
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text("INACTIVE"),
                                            )),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                      //const QuizList(),
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
