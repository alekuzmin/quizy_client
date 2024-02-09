import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizy/app/ui/components/app_dialog.dart';
import 'package:quizy/feature/auth/ui/settings_screen.dart';
import 'package:quizy/feature/quiz/domain/state/quiz_cubit.dart';
import 'package:quizy/feature/quiz/ui/quiz_list.dart';

import '../../../app/ui/components/app_drawer.dart';
import '../../auth/domain/auth_state/auth_cubit.dart';
import '../../auth/domain/entities/user_entity/user_entity.dart';

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
            iconTheme: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
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
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Align(
                        alignment: AlignmentDirectional.center,
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
                                    shape:
                                        const CircleBorder(side: BorderSide.none),
                                  ),
                                  child: Text(
                                    '+',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                        ),
                                  )),
                              const TextButton(
                                onPressed: null,
                                child: Text('ВСЕ'),
                              ),
                              TextButton(
                                child: const Text('ОЖИДАЮТ'),
                                onPressed: () {},
                              ),
                              TextButton(
                                child: const Text('АКТИВНЫЕ'),
                                onPressed: () {},
                              ),
                              TextButton(
                                child: const Text('ЗАВЕРШЕННЫЕ'),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      ),
                      const QuizList(),
                    ],
                  ),
                ),
              ),
            ),
          )
      ),
    );
  }
}
