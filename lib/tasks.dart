import 'package:flutter/material.dart';
import 'package:tasarim/sayfam.dart';

class Tasks extends StatefulWidget {
  const Tasks({super.key});

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(300, 0, 0, 0),
      color: Colors.amber,
      child: const Center(child: Text('Tasks')),
    );
  }
}
