import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizy/feature/quiz/ui/components/history.dart';

class HistoryList extends StatelessWidget{
  const HistoryList({super.key});



  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children:  [
        const History(text: "27.02.2024", percent: 60, color: Colors.orange,),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Архив:',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(
                color: Theme.of(context)
                    .colorScheme
                    .primary,
              ),
            ),
          ),
        ),
        const History(text: "24.10.2023", percent: 100, color: Colors.green),
        const History(text: "10.03.2023", percent: 90, color: Colors.orange),
        const History(text: "12.12.2022", percent: 85, color: Colors.orange),
      ],
    );
  }

}