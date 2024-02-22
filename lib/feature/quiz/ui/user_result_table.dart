import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserResultTab extends StatelessWidget {
  const UserResultTab({super.key});

  @override
  Widget build(BuildContext context) {
    var list = [
      {
        "id": "Иванов Иван Иванович",
        "q1": "5",
        "c1": "Жопа",
        "q2": "6",
        "c2": "",
        "q3": "7",
        "c3": "",
        "q4": "4",
        "c4": "",
        "q5": "7",
        "c5": "",
        "q6": "5",
        "c6": "",
      },
    ];
    return TooltipVisibility(
      visible: true,
      child: Container(
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
              scrollDirection: Axis.horizontal,
              child: Table(
                border: TableBorder.all(),
                columnWidths: const <int, TableColumnWidth>{
                  0: IntrinsicColumnWidth(),
                  1: IntrinsicColumnWidth(),
                  2: IntrinsicColumnWidth(),
                  3: IntrinsicColumnWidth(),
                  4: IntrinsicColumnWidth(),
                  5: IntrinsicColumnWidth(),
                  6: IntrinsicColumnWidth(),
                  7: IntrinsicColumnWidth(),
                },
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: <TableRow>[
                  const TableRow(children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(child: Text("ФИО")),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(child: Text("Интересность задач")),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(child: Text("Сложность задач")),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(child: Text("Достаточность обратной связи")),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                          child:
                              Text("Удовлетворенность денежным вознаграждение")),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(child: Text("Отношения в команде")),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(child: Text("Планы развития")),
                    ),
                  ]),
                  for (var item in list)
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text(item["id"]!)),
                      ),
                      _Cell(item["q1"]!, item["c1"]!),
                      _Cell(item["q2"]!, item["c2"]!),
                      _Cell(item["q3"]!, item["c3"]!),
                      _Cell(item["q4"]!, item["c4"]!),
                      _Cell(item["q5"]!, item["c5"]!),
                      _Cell(item["q6"]!, item["c6"]!),
                    ]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Cell extends StatelessWidget{
  const _Cell(this.score, this.comment);

  final String score;
  final String comment;

  @override
  Widget build(BuildContext context) {
    Color color = Colors.white60;
    if (comment != ""){
      color = Colors.blueAccent;
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
          child: Tooltip(
            message: comment,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey
            ),
            height: 24,
            padding: const EdgeInsets.all(8.0),
            preferBelow: true,
            textStyle: const TextStyle(
              fontSize: 16,
            ),
            child: Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    border: Border.all(
                      color: color,
                      width: 2.0,
                      style: BorderStyle.solid,
                    )),
                child: Center(
                  child: Text(score, style: const TextStyle(
                      color: Colors.blueAccent
                  ),),
                )),
          )),
    );
  }

}
