import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'archive_list.dart';

class Archive extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return TooltipVisibility(
      visible: false,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Архив",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
              )
          ),
          backgroundColor: Theme.of(context).colorScheme.primary,
          iconTheme:
          IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        ),
        body: Container(
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
                      ArchiveList(),
                      //const QuestionList(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),

      ),
    );
  }

}