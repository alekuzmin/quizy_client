import 'package:quizy/feature/auth/ui/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/ui/components/app_text_button.dart';
import '../../../app/ui/components/app_text_field.dart';
import '../domain/auth_state/auth_cubit.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final controllerLogin = TextEditingController();
  final controllerPassword = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
          Text("Авторизация",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,)
            //style: TextStyle(color: Theme.of(context).colorScheme.secondary),
          ),
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        body: Form(
            key: formKey,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppTextField(
                      controller: controllerLogin,
                      labelText: "логин",
                    ),
                    const SizedBox(height: 16),
                    AppTextField(
                      obscureText: true,
                      controller: controllerPassword,
                      labelText: "пароль",
                    ),
                    const SizedBox(height: 16),
                    AppTextButton(
                      text: "Войти",
                      onPressed: () {
                        if (formKey.currentState?.validate() == true) {
                          _onTapToSignIn(context.read<AuthCubit>());
                        }
                      },
                    ),
                    const SizedBox(height: 16),
                    AppTextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => RegistrationScreen()));
                        },
                        text: "Регистрация")
                  ],
                ),
              ),
            )));
  }

  void _onTapToSignIn(AuthCubit authCubit) => authCubit.signIn(
      login: controllerLogin.text, password: controllerPassword.text);
}
