import 'package:flutter/material.dart';


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
        ),
    );
  }


}