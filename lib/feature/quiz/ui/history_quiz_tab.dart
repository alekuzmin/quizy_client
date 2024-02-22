import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizy/feature/quiz/ui/components/history_list.dart';


class HistoryQuizTab extends StatelessWidget {
  const HistoryQuizTab({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.all(16),
      //width: 500,
      //color: Colors.black.withOpacity(0.15),
      child: const Material(
        //color: Colors.white,
        elevation: 24,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: SingleChildScrollView(
            //scrollDirection: Axis.horizontal,
            child: SizedBox(
              //height: MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top,
              child: Column(
                //mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  HistoryList(),
                  //const QuestionList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}