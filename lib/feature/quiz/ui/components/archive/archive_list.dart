import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'archive_item.dart';

class ArchiveList extends StatelessWidget{
  const ArchiveList({super.key});



  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children:  [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Опрос удовлетворенности:',
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
        const ArchiveItem(text: "27.02.2024", percent: 60, color: Colors.orange,),
        const ArchiveItem(text: "24.10.2023", percent: 100, color: Colors.green),
        const ArchiveItem(text: "10.03.2023", percent: 90, color: Colors.orange),
        const ArchiveItem(text: "12.12.2022", percent: 85, color: Colors.orange),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Новогодний опрос:',
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
        const ArchiveItem(text: "20.12.2023", percent: 100, color: Colors.green,),
        const ArchiveItem(text: "19.12.2022", percent: 100, color: Colors.green,),
      ],
    );
  }

}