import 'package:flutter/material.dart';
import 'package:tasarim/sayfam.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(300, 0, 0, 0),
      color: Colors.deepOrange,
      child: const Center(child: Text('Calendar')),
    );
  }
}
