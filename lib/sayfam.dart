// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:tasarim/Dashboard.dart';
import 'package:tasarim/Activities.dart';
import 'package:tasarim/calendar.dart';
import 'package:tasarim/project.dart';
import 'package:tasarim/tasks.dart';
import 'package:tasarim/teams.dart';

class Sayfam extends StatefulWidget {
  const Sayfam({Key? key}) : super(key: key);

  @override
  State<Sayfam> createState() => _SayfamState();
}

// ignore: camel_case_types
class _SayfamState extends State<Sayfam> {
  int currentIndex = 0;

  List<Widget> pages = const [
    Tasks(),
    Activities(),
    Dashboard(),
    Project(),
    Teams(),
    Calendar(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: pages[currentIndex],
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    width: 300,
                    height: 753,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 2, color: Colors.white),
                    ),
                    child: ListView(
                      children: [
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.fromLTRB(65, 30, 20, 20),
                              child: Icon(
                                Icons.camera,
                                size: 35,
                                color: Colors.blue,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 30, 0, 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Teams Work',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    'Workspace',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                                  child: Icon(
                                    Icons.expand_less,
                                    size: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Icon(
                                    Icons.expand_more,
                                    size: 15,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.amber,
                            backgroundColor:
                                Colors.white, // Text Color (Foreground color)
                          ),
                          child: const ListTile(
                            leading: Icon(
                              Icons.task_alt_rounded,
                              color: Color.fromARGB(255, 101, 99, 99),
                              size: 20,
                            ),
                            title: Text(
                              "Tasks",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 101, 99, 99)),
                            ),
                            trailing: Icon(
                              Icons.nine_k,
                              color: Colors.blue,
                              size: 20,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              currentIndex = 0;
                            });
                          },
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.amber,
                            backgroundColor:
                                Colors.white, // Text Color (Foreground color)
                          ),
                          onPressed: () {
                            setState(() {
                              currentIndex = 1;
                            });
                          },
                          child: const ListTile(
                            leading: Icon(
                              Icons.local_activity_sharp,
                              color: Color.fromARGB(255, 101, 99, 99),
                              size: 20,
                            ),
                            title: Text(
                              "Activities",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 101, 99, 99)),
                            ),
                            trailing: Icon(
                              Icons.two_k,
                              color: Colors.red,
                              size: 30,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.amber,
                            backgroundColor:
                                Colors.white, // Text Color (Foreground color)
                          ),
                          onPressed: () {
                            setState(() {
                              currentIndex = 2;
                            });
                          },
                          child: const ListTile(
                            leading: Icon(
                              Icons.dashboard_outlined,
                              color: Color.fromARGB(255, 101, 99, 99),
                              size: 20,
                            ),
                            title: Text(
                              "Dashboard",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 101, 99, 99)),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.amber,
                            backgroundColor:
                                Colors.white, // Text Color (Foreground color)
                          ),
                          onPressed: () {
                            setState(() {
                              currentIndex = 3;
                            });
                          },
                          child: const ListTile(
                            leading: Icon(
                              Icons.mail,
                              color: Colors.grey,
                              size: 20,
                            ),
                            title: Text(
                              "Projects",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 101, 99, 99)),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.amber,
                            backgroundColor:
                                Colors.white, // Text Color (Foreground color)
                          ),
                          onPressed: () {
                            setState(() {
                              currentIndex = 4;
                            });
                          },
                          child: const ListTile(
                            leading: Icon(
                              Icons.person_remove_alt_1_sharp,
                              size: 20,
                            ),
                            title: Text(
                              "Teams",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 101, 99, 99)),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.amber,
                            backgroundColor:
                                Colors.white, // Text Color (Foreground color)
                          ),
                          onPressed: () {
                            setState(() {
                              currentIndex = 5;
                            });
                          },
                          child: const ListTile(
                            leading: Icon(
                              Icons.calendar_month,
                              size: 20,
                            ),
                            title: Text(
                              "Calendar",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 101, 99, 99)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                          child: const Text(
                            'Project',
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromARGB(255, 101, 99, 99)),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: InkWell(
                            child: ListTile(
                              leading: Icon(
                                Icons.adjust_outlined,
                                size: 20,
                              ),
                              title: Text(
                                "Google Ads",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 101, 99, 99)),
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: InkWell(
                            child: ListTile(
                              leading: Icon(
                                Icons.adjust_outlined,
                                size: 20,
                              ),
                              title: Text(
                                "WayFinder",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 101, 99, 99)),
                              ),
                              trailing: Icon(
                                Icons.three_k,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: InkWell(
                            child: ListTile(
                              leading: Icon(
                                Icons.adjust_outlined,
                                size: 20,
                              ),
                              title: Text(
                                "Internal Test",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 101, 99, 99)),
                              ),
                              trailing: Icon(
                                Icons.thirteen_mp,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Column(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(38, 0, 0, 0),
                                  child: Icon(
                                    Icons.expand_more,
                                    size: 15,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(35, 0, 0, 0),
                              child: const Text(
                                'Show more',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromARGB(255, 101, 99, 99)),
                              ),
                            ),
                            const SizedBox(height: 5),
                          ],
                        ),
                        const SizedBox(
                          height: 90,
                        ),
                        const ListTile(
                          leading: CircleAvatar(
                            radius: 18,
                          ),
                          title: Text(
                            'Kemal Dencik',
                          ),
                          trailing: Icon(Icons.more_horiz),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const VerticalDivider(
                width: 2,
                color: Color.fromARGB(255, 167, 163, 163),
              )
            ],
          ),
        ],
      ),
    );
  }
}
