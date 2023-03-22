import 'package:flutter/material.dart';

import 'package:tasarim/Intergrat.dart';
import 'package:tasarim/Notifi.dart';
import 'package:tasarim/Payment.dart';
import 'package:tasarim/Plans.dart';
import 'package:tasarim/password.dart';
import 'package:tasarim/personaldetail.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool status = false;

  // ignore: non_constant_identifier_names
  int Index = 2;
  List<Widget> kemal = const [
    Personal(),
    Password(),
    Plans(),
    Payment(),
    Notifi(),
    Intergrat(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(300, 0, 0, 0),
        child: Column(
          children: [
            Container(
              height: 80,
              width: 1236,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'Settings',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(10)),
                    width: 80,
                    height: 20,
                    child: const Center(
                      child: Text(
                        'General',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 20,
                    color: Colors.white,
                    child: const Center(
                      child: Text(
                        'Workspace',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 730,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 37, 33, 243),
                    child: InkWell(
                      splashColor: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Create New',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              height: 3,
            ),
            Column(
              children: [
                Container(
                    height: 80,
                    width: 1236,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Material(
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                              width: 2,
                              color: Index == 0 ? Colors.blue : Colors.white,
                            ))),
                            child: InkWell(
                              hoverColor:
                                  const Color.fromARGB(255, 54, 33, 243),
                              onTap: () {
                                setState(() {
                                  Index = 0;
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Personal Details',
                                  style: TextStyle(
                                      color: Index == 0
                                          ? Colors.blue
                                          : Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        Material(
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                              width: 2,
                              color: Index == 1 ? Colors.blue : Colors.white,
                            ))),
                            child: InkWell(
                              hoverColor:
                                  const Color.fromARGB(255, 54, 33, 243),
                              onTap: () {
                                setState(() {
                                  Index = 1;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Password',
                                  style: TextStyle(
                                      color: Index == 1
                                          ? Colors.blue
                                          : Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        Material(
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 2,
                                        color: Index == 2
                                            ? Colors.blue
                                            : Colors.white))),
                            child: InkWell(
                              hoverColor:
                                  const Color.fromARGB(255, 54, 33, 243),
                              onTap: () {
                                setState(() {
                                  Index = 2;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Plans & Pricing',
                                  style: TextStyle(
                                      color: Index == 2
                                          ? Colors.blue
                                          : Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        Material(
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 2,
                                        color: Index == 3
                                            ? Colors.blue
                                            : Colors.white))),
                            child: InkWell(
                              hoverColor:
                                  const Color.fromARGB(255, 54, 33, 243),
                              onTap: () {
                                setState(() {
                                  Index = 3;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Payment & Billign',
                                  style: TextStyle(
                                      color: Index == 3
                                          ? Colors.blue
                                          : Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        Material(
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 2,
                                        color: Index == 4
                                            ? Colors.blue
                                            : Colors.white))),
                            child: InkWell(
                              hoverColor:
                                  const Color.fromARGB(255, 54, 33, 243),
                              onTap: () {
                                setState(() {
                                  Index = 4;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Notifications',
                                  style: TextStyle(
                                      color: Index == 4
                                          ? Colors.blue
                                          : Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        Material(
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 2,
                                        color: Index == 5
                                            ? Colors.blue
                                            : Colors.white))),
                            child: InkWell(
                              hoverColor:
                                  const Color.fromARGB(255, 54, 33, 243),
                              onTap: () {
                                setState(() {
                                  Index = 5;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'İntergrations',
                                  style: TextStyle(
                                      color: Index == 5
                                          ? Colors.blue
                                          : Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                const Divider(
                  height: 3,
                  color: Colors.grey,
                ),
                Container(
                  width: 1236,
                  height: 587.5,
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: kemal[Index],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
