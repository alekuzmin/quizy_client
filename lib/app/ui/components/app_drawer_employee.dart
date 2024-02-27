import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizy/feature/quiz/ui/components/archive/archive.dart';

import '../../../feature/auth/domain/auth_state/auth_cubit.dart';
import '../../../feature/auth/ui/employee_screen.dart';
import '../../../feature/auth/ui/settings_screen.dart';

class AppDrawerEmployee extends StatelessWidget {
  const AppDrawerEmployee(BuildContext context, {super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      child: ListView(
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text("Q U I Z Y",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white70),
            ),
          ),
          // ListTile(
          //   leading: const Icon(Icons.quiz),
          //   title: const Text("Опросы"),
          //   onTap: () {},
          // ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Настройки"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingsScreen(),
                  ));
              context.read<AuthCubit>().getProfile();
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text("Выйти"),
            onTap: () {
              Navigator.pop(context);
              context.read<AuthCubit>().logOut();
            },
          ),
        ],
      ),
    );
  }
}
