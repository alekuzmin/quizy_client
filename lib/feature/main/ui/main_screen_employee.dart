import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizy/app/ui/components/app_drawer_employee.dart';
import 'package:quizy/feature/auth/ui/settings_screen.dart';
import 'package:quizy/feature/quiz/ui/detail_quiz_screen_employee.dart';

import '../../auth/domain/auth_state/auth_cubit.dart';


class MainScreenEmployee extends StatelessWidget {
  const MainScreenEmployee({super.key,});


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
                  icon: const CircleAvatar(
                    backgroundColor: Colors.orangeAccent,
                    child: Text(
                      "ИП",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )),
            ],
          ),
          drawer: AppDrawerEmployee(context),
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
                      ListView(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const DetailQuizScreenEmployee()));
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
                                        padding: const EdgeInsets.all(16),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8.0))
                                          ),
                                          child: const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text("Пройдите опрос (6 вопросов) до 10.03.2024")
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
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
