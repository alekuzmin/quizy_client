import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HistoryList extends StatelessWidget{
  const HistoryList({super.key});



  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: [
        GestureDetector(
          onTap: () {
            // Navigator.of(context).push(MaterialPageRoute(
            //     builder: (context) =>
            //     const DetailQuizScreenEditStatus()));
          },
          child: Card(
            //color: Theme.of(context).colorScheme.secondary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)),
            child: Row(
              //mainAxisSize: MainAxisSize.min,
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  //mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 16),
                      child: Text("24.10.2023",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                            color: Colors.black54,
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            // Navigator.of(context).push(MaterialPageRoute(
            //     builder: (context) =>
            //     const DetailQuizScreenEditStatus()));
          },
          child: Card(
            //color: Theme.of(context).colorScheme.secondary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)),
            child: Row(
              //mainAxisSize: MainAxisSize.min,
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  //mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 16),
                      child: Text("10.03.2023",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                            color: Colors.black54,
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            // Navigator.of(context).push(MaterialPageRoute(
            //     builder: (context) =>
            //     const DetailQuizScreenEditStatus()));
          },
          child: Card(
            //color: Theme.of(context).colorScheme.secondary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)),
            child: Row(
              //mainAxisSize: MainAxisSize.min,
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  //mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 16),
                      child: Text("12.12.2022",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                            color: Colors.black54,
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

}