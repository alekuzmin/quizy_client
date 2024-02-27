import 'package:flutter/material.dart';
import 'package:quizy/app/ui/components/app_text_button.dart';
import 'package:quizy/app/ui/components/app_text_field.dart';

class AppDialog extends StatefulWidget {
  const AppDialog({
    super.key,
    required this.value1,
    required this.onPressed,
  });

  final String value1;
  final Function(String v1) onPressed;

  @override
  State<AppDialog> createState() => _AppDialogState();
}

class _AppDialogState extends State<AppDialog> {
  final val1Controller = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool slider = false;

  @override
  void dispose() {
    val1Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      children: [
        Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                AppTextField(
                    controller: val1Controller, labelText: widget.value1),
                const SizedBox(height: 16,),
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
                    Text("анонимный опрос",
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Colors.black54,
                        )),
                  ],
                ),
                const SizedBox(height: 16,),
                AppTextButton(onPressed: (){
                  if(formKey.currentState?.validate() == true){
                    Navigator.pop(context);
                    widget.onPressed(val1Controller.text);
                  }
                }, text: "Добавить",),
              ],

            ),
          ),
        ),

      ],
    );
  }
}
