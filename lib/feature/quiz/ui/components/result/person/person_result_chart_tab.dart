import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PersonResultChartTab extends StatefulWidget {
  const PersonResultChartTab({super.key});

  // ignore: prefer_const_constructors_in_immutables


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<PersonResultChartTab> {
  late List<_ChartData> data;
  late List<_ChartData> old;
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    data = [
      _ChartData('Интересность\nзадач', 8),
      _ChartData('Сложность задач', 7),
      _ChartData('Достаточность\nобратной связи', 6),
      _ChartData('Удовлетворенность\nденежным\nвознаграждением', 5),
      _ChartData('Отношения в команде', 9),
      _ChartData('Планы развития', 8),
    ];
    old = [
      _ChartData('Интересность\nзадач', 9),
      _ChartData('Сложность задач', 8),
      _ChartData('Достаточность\nобратной связи', 7),
      _ChartData('Удовлетворенность\nденежным\nвознаграждением', 7),
      _ChartData('Отношения в команде', 9),
      _ChartData('Планы развития', 6),
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.all(16),
      child: Material(
        elevation: 24,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: SfCartesianChart(
                primaryXAxis: const CategoryAxis(),
                primaryYAxis: const NumericAxis(minimum: 0, maximum: 10, interval: 1),
                tooltipBehavior: _tooltip,
                series: <CartesianSeries<_ChartData, String>>[
                  ColumnSeries<_ChartData, String>(
                      dataSource: data,
                      xValueMapper: (_ChartData data, _) => data.x,
                      yValueMapper: (_ChartData data, _) => data.y,
                      name: 'Текущий',
                      color: const Color.fromRGBO(8, 142, 255, 1)),
                  ColumnSeries<_ChartData, String>(
                      dataSource: old,
                      xValueMapper: (_ChartData data, _) => data.x,
                      yValueMapper: (_ChartData data, _) => data.y,
                      name: 'Прошлый',
                      color: Colors.orange),

                ]
        ),
      ),
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}