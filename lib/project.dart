import 'package:flutter/material.dart';
import 'package:tasarim/sayfam.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(300, 0, 0, 0),
      color: Colors.blue,
      child: const Center(child: Text('Project')),
    );
  }
}
