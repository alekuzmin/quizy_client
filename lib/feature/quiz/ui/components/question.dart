import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../app/ui/components/app_dialog_edit_question.dart';

class Question extends StatelessWidget{
  const Question({super.key, required this.text});

  final String text;


  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) => AppDialogEditQuestion(
              value1: text,
              onPressed: (value1) {
              },
            )
        );
      },
      child: Card(
        //color: Theme.of(context).colorScheme.secondary,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)),
        child: Column(

          //crossAxisAlignment: CrossAxisAlignment.,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 16),
                      child: Text(text,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                            color: Colors.black54,
                          )),
                    ),

                  ],
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  isError: false,
                  tristate: true,
                  value: true, onChanged: (bool? value) {  },
                ),
                Text("с комментарием",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(
                      color: Colors.black54,
                    )),
                Checkbox(
                  isError: false,
                  tristate: true,
                  value: true, onChanged: (bool? value) {  },
                ),
                Text("со слайдером",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(
                      color: Colors.black54,
                    )),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Icon(Icons.delete,
                      color: Colors.grey,
                      size: 30.0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}