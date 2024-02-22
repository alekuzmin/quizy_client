import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../auth/ui/employee_screen.dart';


class EmployeeQuizTab extends StatefulWidget {
  const EmployeeQuizTab({super.key});

  @override
  State<StatefulWidget> createState() => _EmployeeQuizTab();
}


class _EmployeeQuizTab extends State<EmployeeQuizTab>{

  bool e1 = false;
  bool e2 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.all(16),
      //width: 500,
      //color: Colors.black.withOpacity(0.15),
      child: Material(
        //color: Colors.white,
        elevation: 24,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: SingleChildScrollView(
            //scrollDirection: Axis.horizontal,
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const EmployeeScreen(),
                                  ));
                            },
                            style: TextButton.styleFrom(
                              backgroundColor:
                              Theme.of(context).colorScheme.primary,
                            ),
                            child: Text(
                              'Настроить группы',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimary,
                              ),
                            )),
                      ),

                    ],
                  ),

                ),
                Card(
                  //color: Theme.of(context).colorScheme.secondary,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    //mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        //mainAxisSize: MainAxisSize.min,
                        children: [
                          Checkbox(
                            isError: false,
                            value: e1,
                            onChanged: (bool? value) {
                              setState(
                                    () {
                                  e1 = value!;
                                },
                              );
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Text("Все сотрудники (68)",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                  color: Colors.black54,
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  //color: Theme.of(context).colorScheme.secondary,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    //mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(

                        //mainAxisSize: MainAxisSize.min,
                        children: [
                          Checkbox(
                            isError: false,
                            value: e2,
                            onChanged: (bool? value) {
                              setState(
                                    () {
                                  e2 = value!;
                                },
                              );
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Text("Разработчики (23)",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                  color: Colors.black54,
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                //const QuizList(),
              ],
            ),
          ),
        ),
      ),
    );
  }



}