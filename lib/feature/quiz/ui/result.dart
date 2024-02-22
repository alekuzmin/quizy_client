import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizy/feature/quiz/ui/components/result/quiz_result_chart_tab.dart';
import 'package:quizy/feature/quiz/ui/components/result/quiz_result_tab.dart';
import 'package:quizy/feature/quiz/ui/components/result/save_to_file.dart';


class Result extends StatelessWidget{

  final String text;

  const Result({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
        return _Result(text);
  }

}

class _Result extends StatelessWidget{

  final String text;

  const _Result(this.text);

  TabBar get _tabBar => const TabBar(
    tabs: [
      Tab(icon: Icon(Icons.people),),
      Tab(icon: Icon(Icons.area_chart),),

    ],
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: TooltipVisibility(
        visible: false,
        child: Scaffold(
          appBar: AppBar(
            bottom: PreferredSize(
              preferredSize: _tabBar.preferredSize,
              child: ColoredBox(
                color: Theme.of(context).colorScheme.onPrimary,
                child: _tabBar,
              ),
            ),
            title: Text(text,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                )
            ),
            backgroundColor: Theme.of(context).colorScheme.primary,
            iconTheme:
            IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
            actions: [
              IconButton(
                icon: const Icon(Icons.save_as),
                onPressed: () => downloadFile("result.csv"),
              ),
            ],
          ),
          body: const TabBarView(
            children: [
              QuizResultTab(),
              QuizResultChartTab()
            ],
          ),
        ),
      ),
    );
  }
}

downloadFile(url){
  AnchorElement anchorElement = AnchorElement(href: url);
  anchorElement.download = "result.csv";
  anchorElement.click();
}