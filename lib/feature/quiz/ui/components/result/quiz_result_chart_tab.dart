import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class QuizResultChartTab extends StatefulWidget {
  const QuizResultChartTab({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<QuizResultChartTab> {
  late List<_ChartData> data;
  late List<_ChartData> old;
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    data = [
      _ChartData('Интересность\nзадач', 6.4),
      _ChartData('Сложность задач', 5.8),
      _ChartData('Достаточность\nобратной связи', 6.9),
      _ChartData('Удовлетворенность\nденежным\nвознаграждением', 6.8),
      _ChartData('Отношения в команде', 9.1),
      _ChartData('Планы развития', 7.1),
    ];
    old = [
      _ChartData('Интересность\nзадач', 8.6),
      _ChartData('Сложность задач', 8.2),
      _ChartData('Достаточность\nобратной связи', 7.3),
      _ChartData('Удовлетворенность\nденежным\nвознаграждением', 7.8),
      _ChartData('Отношения в команде', 7.4),
      _ChartData('Планы развития', 6.8),
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