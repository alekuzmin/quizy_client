import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonResult extends StatelessWidget {
  const PersonResult({super.key, required this.question, required this.score, required this.comment});

  final String question;
  final String score;
  final String comment;

  @override
  Widget build(BuildContext context) {
    return Card(
      //color: Theme.of(context).colorScheme.secondary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(question,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Colors.black54,
                          )),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 32, bottom: 8, top: 8),
                  child: Container(
                    height: 32,
                    width: 32,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,

                    ),
                    child: Center(
                      child: Text(score,
                          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Colors.white70,
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5),
                      ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Text(comment,
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Colors.black87,
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
