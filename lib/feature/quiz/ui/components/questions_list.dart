import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../detail_quiz_screen_edit_status.dart';

class QuestionsList extends StatelessWidget{
  const QuestionsList({super.key});



  @override
  Widget build(BuildContext context) {
   return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: [
        GestureDetector(
          onTap: () {
            // Navigator.of(context).push(MaterialPageRoute(
            //     builder: (context) =>
            //     const DetailQuizScreenEditStatus()));
          },
          child: Card(
            //color: Theme.of(context).colorScheme.secondary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)),
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  //mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 16),
                      child: Text("1. Интересность задач",
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
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Checkbox(
                        isError: false,
                        tristate: true,
                        value: true, onChanged: (bool? value) {  },
                      ),
                    ),
                    Text("с комментарием",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(
                          color: Colors.black54,
                        )),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Checkbox(
                        isError: false,
                        tristate: true,
                        value: true, onChanged: (bool? value) {  },
                      ),
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
        GestureDetector(
          onTap: () {
            // Navigator.of(context).push(MaterialPageRoute(
            //     builder: (context) =>
            //     const DetailQuizScreenEditStatus()));
          },
          child: Card(
            //color: Theme.of(context).colorScheme.secondary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)),
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  //mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 16),
                      child: Text("2. Сложность задач",
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
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Checkbox(
                        isError: false,
                        tristate: true,
                        value: true, onChanged: (bool? value) {  },
                      ),
                    ),
                    Text("с комментарием",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(
                          color: Colors.black54,
                        )),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Checkbox(
                        isError: false,
                        tristate: true,
                        value: true, onChanged: (bool? value) {  },
                      ),
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
        GestureDetector(
          onTap: () {
            // Navigator.of(context).push(MaterialPageRoute(
            //     builder: (context) =>
            //     const DetailQuizScreenEditStatus()));
          },
          child: Card(
            //color: Theme.of(context).colorScheme.secondary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)),
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  //mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 16),
                      child: Text("3. Достаточность обратной связи",
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
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Checkbox(
                        isError: false,
                        tristate: true,
                        value: true, onChanged: (bool? value) {  },
                      ),
                    ),
                    Text("с комментарием",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(
                          color: Colors.black54,
                        )),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Checkbox(
                        isError: false,
                        tristate: true,
                        value: true, onChanged: (bool? value) {  },
                      ),
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
      ],
    );
  }

}