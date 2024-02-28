import 'package:flutter/material.dart';
import 'package:quizy/app/ui/components/app_text_button.dart';

import 'app_text_edit_field.dart';

class AppDialogEditQuestion extends StatefulWidget {
  const AppDialogEditQuestion({
    super.key,
    required this.value1,
    required this.onPressed,
  });

  final String value1;
  final Function(String v1) onPressed;

  @override
  State<AppDialogEditQuestion> createState() => _AppDialogEditState();
}

class _AppDialogEditState extends State<AppDialogEditQuestion> {
  final val2Controller = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool comment = true;
  bool slider = true;

  @override
  void dispose() {
    val2Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      children: [
        SizedBox(
          width: 300,
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  AppTextEditField(
                      controller: val2Controller, initialValue: widget.value1),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Checkbox(
                          isError: false,
                          value: comment,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                comment = value!;
                              },
                            );
                          }),
                      Text("с комментарием",
                          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                color: Colors.black54,
                              )),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                          isError: false,
                          value: slider,
                          onChanged: (bool? value) {
                            setState(
                                  () {
                                slider = value!;
                              },
                            );
                          }),
                      Text("со слайдером",
                          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Colors.black54,
                          )),
                    ],
                  ),

                  const SizedBox(
                    height: 16,
                  ),
                  AppTextButton(
                    onPressed: () {
                      if (formKey.currentState?.validate() == true) {
                        Navigator.pop(context);
                        widget.onPressed(val2Controller.text);
                      }
                    },
                    text: "Сохранить",
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
