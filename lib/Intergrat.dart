import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Intergrat extends StatefulWidget {
  const Intergrat({super.key});

  @override
  State<Intergrat> createState() => _IntergratState();
}

class _IntergratState extends State<Intergrat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
    );
  }
}
