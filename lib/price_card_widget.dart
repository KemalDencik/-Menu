import 'package:flutter/material.dart';

class PriceCardWidget extends StatefulWidget {
  final String baslik;
  final String altbaslik;
  final Color Iconcolor;
  final String deger;
  final String degeralti;
  final String butonbaslik;
  final String butonaltibir;
  final String butonaltiuc;
  final String butonaltidort;
  final String butonaltibes;
  final String butonaltiiki;
  final Icon altIcon;
  final Icon altIconiki;
  final Icon altIconuc;
  final Icon altIcondort;
  final Icon altIconbes;
  final Color butoncolor;
  final Color textcolor;
  const PriceCardWidget({
    super.key,
    required this.baslik,
    required this.Iconcolor,
    required this.altbaslik,
    required this.deger,
    required this.degeralti,
    required this.butonbaslik,
    required this.butonaltibir,
    required this.altIcon,
    required this.altIconiki,
    required this.butonaltiuc,
    required this.butonaltidort,
    required this.butonaltibes,
    required this.butonaltiiki,
    required this.altIconuc,
    required this.altIcondort,
    required this.altIconbes,
    required this.butoncolor,
    required this.textcolor,
  });

  @override
  State<PriceCardWidget> createState() => _PriceCardWidgetState();
}

class _PriceCardWidgetState extends State<PriceCardWidget> {
  bool isHover = false;

  void _incrementEnter(PointerEvent details) {
    setState(() {
      colorT = const Color.fromARGB(255, 65, 33, 243);
    });
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      colorT = Colors.white;
    });
  }

  void _updateLocation(PointerEvent details) {
    setState(() {
      colorT;
    });
  }

  Color colorT = Colors.white;

  @override
  Widget build(BuildContext context) {
    final hovoredtransform = Matrix4.identity()..scale(1.03);
    final transform = isHover ? hovoredtransform : Matrix4.identity();
    return MouseRegion(
      onEnter: _incrementEnter,
      onHover: _updateLocation,
      onExit: _incrementExit,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: transform,
        child: Container(
          width: 250,
          height: 437,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: colorT),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.camera,
                      color: widget.Iconcolor,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 150, 15),
                child: Text(
                  widget.baslik,
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Text(
                  widget.altbaslik,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 30, 0, 0),
                child: Text(
                  widget.deger,
                  style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                child: Text(
                  widget.degeralti,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                child: Container(
                  width: 160,
                  height: 35,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1,
                          color: const Color.fromARGB(255, 200, 197, 197)),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: widget.butoncolor,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {},
                      onHover: (value) {
                        setState(() {
                          setState(() {
                            isHover = value;
                          });
                        });
                      },
                      child: Center(
                        child: Text(
                          widget.butonbaslik,
                          style: TextStyle(
                              color: widget.textcolor,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 5),
                      child: widget.altIcon),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 10, 0, 5),
                    child: Text(
                      widget.butonaltibir,
                      style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 5),
                      child: widget.altIconiki),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 10, 0, 5),
                    child: Text(
                      widget.butonaltiiki,
                      style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: widget.altIconuc),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                    child: Text(
                      widget.butonaltiuc,
                      style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: widget.altIcondort),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                    child: Text(
                      widget.butonaltidort,
                      style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: widget.altIconbes),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                    child: Text(
                      widget.butonaltibes,
                      style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
