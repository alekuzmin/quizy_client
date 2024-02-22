import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizy/feature/quiz/ui/components/result/person/person.dart';

class User extends StatelessWidget {
  const User({super.key, required this.userName, required this.isCompleted});

  final String userName;
  final bool isCompleted;

  @override
  Widget build(BuildContext context) {

    Icon icon = const Icon(
      Icons.access_time,
      color: Colors.grey,
      size: 30.0,
    );

    if (isCompleted) {
      icon = const Icon(
        Icons.check,
        color: Colors.green,
        size: 30.0,
      );
    }

    return GestureDetector(
      onTap: () {
           Navigator.of(context).push(MaterialPageRoute(
               builder: (context) =>
                   Person(text: userName,)));
      },
      child: Card(
        //color: Theme.of(context).colorScheme.secondary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Row(
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(userName,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Colors.black54,
                      )),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: icon,
              ),
            )
          ],
        ),
      ),
    );
  }
}
