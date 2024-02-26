import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Employees extends StatelessWidget {
  const Employees({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return TooltipVisibility(
      visible: false,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.primary,
            iconTheme:
            IconThemeData(color: Theme.of(context).colorScheme.onTertiary),
            title: Text(text,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onTertiary,
                )),
          ),
          body: Container(
            padding: const EdgeInsets.all(16),
            //width: 35,
            //height: 38,
            child: Material(
              elevation: 24,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor:
                                Theme.of(context).colorScheme.primary,
                              ),
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: const Text("Поиск"),
                                        content: const TextField(
                                          decoration: InputDecoration(
                                            hintText: "Введите данные для поиска",
                                          ),
                                        ),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text("Найти"),
                                          ),
                                        ],
                                      );
                                    });
                              },
                              child: Text(
                                '+ Добавить сотрудника',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                  color:
                                  Theme.of(context).colorScheme.onPrimary,
                                ),
                              )),
                        ),
                      ),
                      const _Employee("Александров Иван Иванович"),
                      const _Employee("Борисов Петр Иванович"),
                      const _Employee("Винокур Сергей Иванович"),
                      const _Employee("Гномов Иван Иванович"),
                      const _Employee("Дудь Иван Иванович"),
                      const _Employee("Ермакова Анна Ивановна"),
                      const _Employee("Иванов Иван Иванович"),
                      const _Employee("Колбасова Марта Романовна"),
                      const _Employee("Ларина Александра Петровна"),
                      const _Employee("Масса Жанна Иванович"),
                      const _Employee("Озеро Петр Иванович"),
                      const _Employee("Петренко Жуль Иванович"),
                      const _Employee("Сидорова Валерия Ивановна"),
                      const _Employee("Ярмаков Вий Павлович"),
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}

class _Employee extends StatelessWidget{
  const _Employee(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      //color: Theme.of(context).colorScheme.secondary,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(text,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(
                  color: Colors.black54,
                )),
          ),
          const Align(
            alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: Icon(Icons.delete,
                  color: Colors.grey,
                  size: 30.0,
                ),
              )),
        ],
      ),
    );
  }


}
