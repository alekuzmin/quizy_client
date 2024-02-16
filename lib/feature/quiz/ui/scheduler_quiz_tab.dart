import 'package:date_field/date_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SchedulerQuizTab extends StatelessWidget{
  const SchedulerQuizTab({super.key});

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
            child: SizedBox(
              //height: MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top,
              child: Column(
                //mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                        child: Text(
                          'Расписание',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                            color: Theme.of(context)
                                .colorScheme
                                .primary,
                          ),
                        )),
                  DateTimeFormField(
                    decoration: const InputDecoration(
                      labelText: 'Дата начала',
                    ),
                    firstDate: DateTime.now().add(const Duration(days: 0)),
                    lastDate: DateTime.now().add(const Duration(days: 40)),
                    initialPickerDateTime: DateTime.now().add(const Duration(days: 0)),
                    onChanged: (DateTime? value) {
                      var selectedDate = value;
                    },
                  ),
                  DateTimeFormField(
                    decoration: const InputDecoration(
                      labelText: 'Дата окончания',
                    ),
                    firstDate: DateTime.now().add(const Duration(days: 1)),
                    lastDate: DateTime.now().add(const Duration(days: 40)),
                    initialPickerDateTime: DateTime.now().add(const Duration(days: 1)),
                    onChanged: (DateTime? value) {
                      var selectedDate = value;
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}