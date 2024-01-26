import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizy/app/ui/root_screen.dart';
import 'package:quizy/feature/auth/domain/auth_repository.dart';
import 'package:quizy/feature/quiz/domain/quiz_repository.dart';
import 'package:quizy/feature/quiz/domain/state/quiz_cubit.dart';

import '../../feature/auth/domain/auth_state/auth_cubit.dart';
import '../di/init_di.dart';
import '../domain/app_builder.dart';

class MainAppBuilder implements AppBuilder {

  bool isSwitched = false;

  @override
  Widget buildApp() {
    return _GlobalProviders(
        child: MaterialApp(
      home: const RootScreen(),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          primary: Colors.blue,
          secondary: Colors.lightBlueAccent,
          tertiary: Colors.white,
          brightness: Brightness.light,
        ),
      ),
      debugShowCheckedModeBanner: false,
    ));
  }
}

class _GlobalProviders extends StatelessWidget {
  const _GlobalProviders({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => locator.get<AuthCubit>()),
      BlocProvider(
          create: (context) =>
              QuizCubit(locator.get<QuizRepository>(), locator.get<AuthCubit>())
                ..fetchQuizs()),
    ], child: child);
  }
}
