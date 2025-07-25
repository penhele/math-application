import 'package:flutter/material.dart';

class MSectionHeading extends StatelessWidget {
  const MSectionHeading({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: Theme.of(context).textTheme.headlineMedium);
  }
}
