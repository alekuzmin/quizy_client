import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizy/app/ui/components/app_dialog.dart';
import 'package:quizy/feature/auth/ui/settings_screen.dart';
import 'package:quizy/feature/quiz/domain/state/quiz_cubit.dart';
import 'package:quizy/feature/quiz/ui/quiz_list.dart';

import '../../auth/domain/auth_state/auth_cubit.dart';
import '../../auth/domain/entities/user_entity/user_entity.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.userEntity});

  final UserEntity userEntity;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Мои опросы",
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
          )),
          backgroundColor:Theme.of(context).colorScheme.primary,
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
        body: Center(
            child: Column(children: [
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AppDialog(
                          value1: "Название опроса",
                          onPressed: (value1) {
                            context.read<QuizCubit>().createQuiz(value1);
                          }));
                },
                icon: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text(
                    "+",
                   style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                    //style: TextStyle(
                       // fontWeight: FontWeight.bold, color: Colors.white),
                    )),
                )),
          ),

          const SizedBox(
              height: 800,
              child: QuizList()),
        ])));
  }
}
