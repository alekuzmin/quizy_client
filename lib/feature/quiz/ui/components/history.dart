import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../result.dart';

class History extends StatelessWidget{

  final String text;
  final double percent;
  final Color color;

  const History({super.key, required this.text, required this.percent, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
         Navigator.of(context).push(MaterialPageRoute(
             builder: (context) =>
             Result(text: text,)));
      },
      child: Card(
        //color: Theme.of(context).colorScheme.secondary,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: LinearPercentIndicator(
                  width: 140.0,
                  lineHeight: 18.0,
                  percent: percent/100,
                  center: Text("$percent%"),
                  backgroundColor: Colors.grey,
                  progressColor: color,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}