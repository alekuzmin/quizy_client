import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton(
      {super.key,
      required this.onPressed,
      required this.text,});


  final VoidCallback onPressed;
  final String text;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Theme.of(context).colorScheme.secondary),
        backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).colorScheme.primary),
        fixedSize: MaterialStateProperty.all<Size>(
              const Size(double.maxFinite, 50))),
      child: Text(text,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
          color: Theme.of(context).colorScheme.onPrimary,),
      ),
    );
  }
}
