import 'package:flutter/cupertino.dart';
import 'package:quizy/feature/quiz/ui/components/result/user.dart';

class UserList extends StatelessWidget{
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children:  const [
        User(userName: "Иванов Иван Иванович", isCompleted: true),
        User(userName: "Петров Иван Иванович", isCompleted: true),
        User(userName: "Сидоров Иван Иванович", isCompleted: true),
        User(userName: "Иванов Андрей Иванович", isCompleted: false),
        User(userName: "Иванов Пётр Иванович", isCompleted: false),
      ],
    );
  }

}