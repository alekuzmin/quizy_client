import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:quizy/feature/quiz/ui/components/history_list.dart';


import '../../../app/ui/components/app_dialog.dart';


class HistoryQuizTab extends StatelessWidget {
  const HistoryQuizTab({super.key});


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
                      child: Row(
                        //mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            //mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding:
                                const EdgeInsets.only(left: 16),
                                child: Text("Текущий опрос",
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
                                  padding: const EdgeInsets.only(left: 16.0),
                                  child: LinearPercentIndicator(
                                    width: 140.0,
                                    lineHeight: 18.0,
                                    percent: 0.6,
                                    center: const Text("60.0%"),
                                    backgroundColor: Colors.grey,
                                    progressColor: Colors.orange,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'История запусков',
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
                  const HistoryList(),
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