import 'dart:math';

import 'package:flutter/material.dart';

import 'price_card_widget.dart';

class Plans extends StatefulWidget {
  const Plans({super.key});

  @override
  State<Plans> createState() => _PlansState();
}

class _PlansState extends State<Plans> {
  bool isHover = false;

  //enter
  void _incrementEnter(PointerEvent details) {
    setState(() {
      colorT = const Color.fromARGB(255, 65, 33, 243);
    });
  }

  //
//exit
  void _incrementExit(PointerEvent details) {
    setState(() {
      colorT = Colors.white;
    });
  }

//
//update
  void _updateLocation(PointerEvent details) {
    setState(() {
      colorT;
    });
  }

  Color colorT = Colors.white;

  double _Users = 100;

  @override
  Widget build(BuildContext context) {
    final hovoredtransform = Matrix4.identity()..scale(1.02);
    final transform = isHover ? hovoredtransform : Matrix4.identity();
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(25, 25, 0, 8),
              child: Text(
                'Plans & Pricing',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
              child: Text(
                'Simple Pricing. No Hidden Fees. Advanced Features for your business',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Slider(
              value: _Users,
              activeColor: const Color.fromARGB(255, 110, 33, 243),
              inactiveColor: Colors.white,
              min: 0,
              max: 600,
              divisions: 6,
              label: _Users.round().toString(),
              onChanged: (double newValue) {
                setState(() {
                  _Users = newValue;
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: PriceCardWidget(
                    baslik: "Personal",
                    Iconcolor: Colors.green,
                    altbaslik: 'Perfect Plan for Status',
                    deger: "Free",
                    degeralti: 'For a Lifetime',
                    butonbaslik: "Current Plan",
                    butonaltibir: "Unlimited Project",
                    butonaltiiki: "Share with 5 to members",
                    butonaltiuc: "Sync across devices",
                    butonaltidort: "",
                    butonaltibes: "",
                    altIcon: Icon(
                      Icons.expand_more_rounded,
                      color: Colors.green,
                    ),
                    altIconuc: Icon(
                      Icons.expand_more_rounded,
                      color: Colors.green,
                    ),
                    altIconiki: Icon(
                      Icons.expand_more_rounded,
                      color: Colors.green,
                    ),
                    altIcondort: Icon(
                      Icons.expand_more_rounded,
                      color: Colors.transparent,
                    ),
                    altIconbes: Icon(
                      Icons.expand_more_rounded,
                      color: Colors.transparent,
                    ),
                    butoncolor: Colors.white,
                    textcolor: Colors.grey,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: PriceCardWidget(
                    baslik: "Professional",
                    Iconcolor: Color.fromARGB(255, 61, 33, 243),
                    altbaslik: 'For Users who want to do more',
                    deger: "\$99",
                    degeralti: '\\year',
                    butonbaslik: "Try For Free",
                    butonaltibir: "Everything in Free Plan",
                    butonaltiiki: "Unlimited Project",
                    butonaltiuc: "Share with 5 to members",
                    butonaltidort: "30 day version history",
                    butonaltibes: "",
                    altIcon: Icon(
                      Icons.expand_more_rounded,
                      color: Colors.green,
                    ),
                    altIconuc: Icon(
                      Icons.expand_more_rounded,
                      color: Colors.green,
                    ),
                    altIconiki: Icon(
                      Icons.expand_more_rounded,
                      color: Colors.green,
                    ),
                    altIcondort: Icon(
                      Icons.expand_more_rounded,
                      color: Colors.green,
                    ),
                    altIconbes: Icon(
                      Icons.expand_more_rounded,
                      color: Colors.transparent,
                    ),
                    butoncolor: Color.fromARGB(255, 37, 33, 243),
                    textcolor: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: PriceCardWidget(
                    baslik: "Team",
                    Iconcolor: Colors.blue,
                    altbaslik: 'Your entire team in one place',
                    deger: "\$249",
                    degeralti: '\\year',
                    butonbaslik: "Try For Free",
                    butonaltibir: "Everything in Pro Plan ",
                    butonaltiiki: "Unlimited Team members",
                    butonaltiuc: "Collaboritive workspace",
                    butonaltidort: "Sharing Permisson ",
                    butonaltibes: "Admin tools",
                    altIcon: Icon(
                      Icons.expand_more_rounded,
                      color: Colors.green,
                    ),
                    altIconuc: Icon(
                      Icons.expand_more_rounded,
                      color: Colors.green,
                    ),
                    altIconiki: Icon(
                      Icons.expand_more_rounded,
                      color: Colors.green,
                    ),
                    altIcondort: Icon(
                      Icons.expand_more_rounded,
                      color: Colors.green,
                    ),
                    altIconbes: Icon(
                      Icons.expand_more_rounded,
                      color: Colors.green,
                    ),
                    butoncolor: Colors.white,
                    textcolor: Colors.black,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: PriceCardWidget(
                    baslik: "Enterprise",
                    Iconcolor: Colors.black,
                    altbaslik: 'Run Your company on your terms ',
                    deger: "Custom ",
                    degeralti: 'Reach out for a quote',
                    butonbaslik: "Contact Use",
                    butonaltibir: "Everything in Team Plan ",
                    butonaltiiki: "Advanced Security",
                    butonaltiuc: "Custom Contract",
                    butonaltidort: "User Provising (SCIM) ",
                    butonaltibes: "SAML SSO",
                    altIcon: Icon(
                      Icons.expand_more_rounded,
                      color: Colors.green,
                    ),
                    altIconuc: Icon(
                      Icons.expand_more_rounded,
                      color: Colors.green,
                    ),
                    altIconiki: Icon(
                      Icons.expand_more_rounded,
                      color: Colors.green,
                    ),
                    altIcondort: Icon(
                      Icons.expand_more_rounded,
                      color: Colors.green,
                    ),
                    altIconbes: Icon(
                      Icons.expand_more_rounded,
                      color: Colors.green,
                    ),
                    butoncolor: Color.fromARGB(255, 33, 72, 243),
                    textcolor: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
