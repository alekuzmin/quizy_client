import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizy/feature/quiz/ui/components/result/person/person_result_chart_tab.dart';
import 'package:quizy/feature/quiz/ui/components/result/person/person_result_tab.dart';

class Person extends StatelessWidget{

  final String text;

  const Person({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return _Person(text);
  }

}

class _Person extends StatelessWidget{

  final String text;

  const _Person(this.text);

  TabBar get _tabBar => const TabBar(
    tabs: [
      Tab(icon: Icon(Icons.person),),
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
          ),
          body: const TabBarView(
            children: [
              PersonResultTab(),
              PersonResultChartTab()
              //ChartResultTab(),
            ],
          ),
        ),
      ),
    );
  }
}