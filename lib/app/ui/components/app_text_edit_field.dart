import 'package:flutter/material.dart';

class AppTextEditField extends StatelessWidget {
  const AppTextEditField(
      {super.key, required this.controller, required this.initialValue, this.obscureText = false});

  final TextEditingController controller;
  final String initialValue;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      validator: emptyValidator,
      maxLines: 1,
      controller: TextEditingController(text: initialValue),
      decoration: InputDecoration(
          labelText: "Текст вопроса",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8  ))
      ),
    );
  }


  String? emptyValidator(String? value) {
    if (value?.isEmpty == true) {
      return "Обязательное поле";
    }
    return null;
  }

}
