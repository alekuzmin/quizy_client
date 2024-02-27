import 'package:flutter/material.dart';


class DetailQuizScreenEmployee extends StatelessWidget {
  const DetailQuizScreenEmployee({super.key});

  @override
  Widget build(BuildContext context) {
    return TooltipVisibility(
      visible: false,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Опрос удовлетворенности",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  )),
          backgroundColor: Theme.of(context).colorScheme.primary,
          iconTheme:
              IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
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
              //scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    const _Question("1. Интересность задач"),
                    const _Question("2. Сложность задач"),
                    const _Question("3. Достаточность обратной связи"),
                    const _Question("4. Удовлетворенность денежным вознаграждением"),
                    const _Question("5. Отношения в команде"),
                    const _Question("6. Планы развития"),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor:
                                  Theme.of(context).colorScheme.primary,
                            ),
                            onPressed: () {},
                            child: Text(
                              'Отправить',
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
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );

    //   ListView( children: [
    //   Text("Name: ${quizEntity.name}" )
    // ],);
  }
}

class _Question extends StatelessWidget {
  const _Question(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      //color: Theme.of(context).colorScheme.secondary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(text,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: Colors.black54,
                            )),
                  ),
                ],
              ),
            ),
          ),
          const SliderExample(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: SizedBox(
                  width: 300,
                  child: TextField(

                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      labelText: 'Комментарий',
                    ),

                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}



class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double _currentSliderValue = 5;

  @override
  Widget build(BuildContext context) {
    return Slider(
        value: _currentSliderValue,
        max: 10,
        divisions: 10,
        label: _currentSliderValue.round().toString(),
        onChanged: (double value) {
          setState(() {
            _currentSliderValue = value;
          });
        },
    );
  }
}