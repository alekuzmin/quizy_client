import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizy/feature/auth/ui/settings_screen.dart';
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
        title: const Text(
          "Мои опросы",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
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
              icon:  CircleAvatar(
                backgroundColor: Colors.orangeAccent,
                child: Text( "${userEntity.lastName.split("").first}${userEntity.firstName.split("").first}",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              )
          ),
        ],
      ),
      body: const QuizList(),
    );
  }
}
