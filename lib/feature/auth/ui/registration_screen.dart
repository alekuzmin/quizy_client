import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/ui/components/app_text_button.dart';
import '../../../app/ui/components/app_text_field.dart';
import '../domain/auth_state/auth_cubit.dart';

class RegistrationScreen extends StatelessWidget {
  final controllerLogin = TextEditingController();
  final controllerPassword = TextEditingController();
  final controllerConfirmPassword = TextEditingController();
  final controllerEmail = TextEditingController();
  final controllerLastName = TextEditingController();
  final controllerFirstName = TextEditingController();
  final controllerMiddleName = TextEditingController();
  final controllerRole = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Theme.of(context).colorScheme.onTertiary,
          ),
          title: Text(
            "Q U I Z Y",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onTertiary,)
          ),
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            width: 500,
            height: 740,
            child: Material(
              elevation: 24,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: SingleChildScrollView (
                  child:
                  Form(
                      key: formKey,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(height: 16),
                              const Text(
                                "Регистрация",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 16),
                              AppTextField(
                                controller: controllerLogin,
                                labelText: "логин",
                              ),
                              const SizedBox(height: 16),
                              AppTextField(
                                controller: controllerEmail,
                                labelText: "email",
                              ),
                              const SizedBox(height: 16),
                              AppTextField(
                                controller: controllerLastName,
                                labelText: "фамилия",
                              ),
                              const SizedBox(height: 16),
                              AppTextField(
                                controller: controllerFirstName,
                                labelText: "имя",
                              ),
                              const SizedBox(height: 16),
                              TextFormField(
                                obscureText: false,
                                maxLines: 1,
                                controller: controllerMiddleName,
                                decoration: InputDecoration(
                                    labelText: "отчество",
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                                ),
                              ),
                              const SizedBox(height: 16),
                              Center(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 15),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black87),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const DropdownButtonRole(),
                                ),
                              ),
                              const SizedBox(height: 16),
                              AppTextField(
                                obscureText: true,
                                controller: controllerPassword,
                                labelText: "пароль",
                              ),
                              const SizedBox(height: 16),
                              AppTextField(
                                obscureText: true,
                                controller: controllerConfirmPassword,
                                labelText: "подтверждение пароля",
                              ),
                              const SizedBox(height: 16),
                              AppTextButton(
                                text: "Зарегистрироваться",
                                onPressed: () {
                                  if(formKey.currentState?.validate() != true){
                                    return;
                                  }
                                  if (controllerPassword.text !=
                                      controllerConfirmPassword.text) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                            content: Text("Пароли не совпадают")));
                                  } else {
                                    _onTapToSignUp(context.read<AuthCubit>());
                                    Navigator.of(context).pop();
                                  }
                                },
                              ),
                              const SizedBox(height: 16),
                            ],
                          ),
                        ),
                      )),
              ),
            ),
          ),
        )
        );
  }

  void _onTapToSignUp(AuthCubit authCubit) => authCubit.signUp(
        login: controllerLogin.text,
        password: controllerPassword.text,
        email: controllerEmail.text,
        role: "Руководитель",
        firstName: controllerFirstName.text,
        lastName: controllerLastName.text,
        middleName: controllerMiddleName.text,
      );
}

class DropdownButtonRole extends StatefulWidget {
  const DropdownButtonRole({super.key});

  @override
  State<DropdownButtonRole> createState() => _DropdownButtonRoleState();
}

class _DropdownButtonRoleState extends State<DropdownButtonRole> {
  final List<String> list = <String>["Руководитель", "Сотрудник"];

  String dropdownValue = "Руководитель";

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      isExpanded: true,
      underline: Container(),
      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
