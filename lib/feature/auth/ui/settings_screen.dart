import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizy/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:quizy/feature/auth/ui/registration_screen.dart';

import '../domain/auth_state/auth_cubit.dart';

class SettingsScreen extends StatelessWidget {

  final GlobalKey<FormState> formKey = GlobalKey();

  SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:
                const Text("Настройки", style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.blueAccent,
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                    context.read<AuthCubit>().logOut();
                  },
                  icon: const Icon(Icons.exit_to_app, color: Colors.white)),
            ]),
        body: Form(
          key: formKey,
          child:
            BlocConsumer<AuthCubit, AuthState>(
              listener: (context, state) {

              },
                builder: (context, state) {
                  final userEntity = state.whenOrNull(
                    authorized: (userEntity) => userEntity,
                  );
                  final controllerEmail = TextEditingController(text: userEntity?.email ?? "");
                  final controllerLastName = TextEditingController(text: userEntity?.lastName ?? "");
                  final controllerFirstName = TextEditingController(text: userEntity?.firstName ?? "");
                  final controllerMiddleName = TextEditingController(text: userEntity?.middleName ?? "");
                  return Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(children: [
                      TextFormField(
                        obscureText: false,
                        maxLines: 1,
                        controller: controllerLastName,
                        decoration: InputDecoration(
                            labelText: "фамилия",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        obscureText: false,
                        maxLines: 1,
                        controller: controllerFirstName,
                        decoration: InputDecoration(
                            labelText: "имя",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        obscureText: false,
                        maxLines: 1,
                        controller: controllerMiddleName,
                        decoration: InputDecoration(
                            labelText: "отчество",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        obscureText: false,
                        maxLines: 1,
                        controller: controllerEmail,
                        decoration: InputDecoration(
                            labelText: "email",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      const SizedBox(height: 16),
                      Center(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 15),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black87),
                              borderRadius: BorderRadius.circular(15)),
                          child: const DropdownButtonRole(),
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          context.read<AuthCubit>().updateUser(
                            email: controllerEmail.text,
                            role: "Руководитель",
                            firstName: controllerFirstName.text,
                            lastName: controllerLastName.text,
                            middleName: controllerMiddleName.text,
                          );
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => SettingsScreen(),
                          //     ));
                          // context.read<AuthCubit>().getProfile();
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.blueAccent),
                            fixedSize: MaterialStateProperty.all<Size>(
                                const Size(double.maxFinite, 50))),
                        child: const Text(
                          "Сохранить",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 16),
                      // TextFormField(
                      //   obscureText: true,
                      //   //validator: emptyValidator,
                      //   maxLines: 1,
                      //   //controller: controller,
                      //   decoration: InputDecoration(
                      //       labelText: "старый пароль",
                      //       border: OutlineInputBorder(
                      //           borderRadius: BorderRadius.circular(15))),
                      // ),
                      // const SizedBox(height: 16),
                      // TextFormField(
                      //   obscureText: true,
                      //   //validator: emptyValidator,
                      //   maxLines: 1,
                      //   //controller: controller,
                      //   decoration: InputDecoration(
                      //       labelText: "новый пароль",
                      //       border: OutlineInputBorder(
                      //           borderRadius: BorderRadius.circular(15))),
                      // ),
                      // const SizedBox(height: 16),
                      // ElevatedButton(
                      //   onPressed: () {},
                      //   style: ButtonStyle(
                      //       backgroundColor:
                      //           MaterialStateProperty.all<Color>(Colors.blueAccent),
                      //       fixedSize: MaterialStateProperty.all<Size>(
                      //           const Size(double.maxFinite, 50))),
                      //   child: const Text(
                      //     "Сменить пароль",
                      //     style: TextStyle(fontSize: 18, color: Colors.white),
                      //   ),
                      // ),
                    ]),
                  );
                },
              ),
        ),

    );
  }

}