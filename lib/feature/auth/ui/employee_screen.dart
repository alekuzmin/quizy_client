import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../domain/auth_state/auth_cubit.dart';

class EmployeeScreen extends StatelessWidget {
  const EmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.primary,
            iconTheme: IconThemeData(
                color: Theme.of(context).colorScheme.onTertiary
            ),
            title:
            Text("Мои сотрудники",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onTertiary,)),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                    context.read<AuthCubit>().logOut();
                  },
                  icon: Icon(Icons.exit_to_app,
                      color: Theme.of(context).colorScheme.onTertiary)),
            ]),
    );
  }


}