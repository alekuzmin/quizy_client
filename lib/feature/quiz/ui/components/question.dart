import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget{
  const Question({super.key, required this.text});

  final String text;


  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        // Navigator.of(context).push(MaterialPageRoute(
        //     builder: (context) =>
        //     const DetailQuizScreenEditStatus()));
      },
      child: Card(
        //color: Theme.of(context).colorScheme.secondary,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}