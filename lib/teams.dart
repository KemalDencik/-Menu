import 'package:flutter/material.dart';
import 'package:tasarim/sayfam.dart';

class Teams extends StatefulWidget {
  const Teams({super.key});

  @override
  State<Teams> createState() => _TeamsState();
}

class _TeamsState extends State<Teams> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(300, 0, 0, 0),
      color: Colors.green,
      child: const Center(child: Text('Teams')),
    );
  }
}
