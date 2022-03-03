import 'package:flutter/material.dart';

import 'svg_widget.dart';

class Babystar extends StatefulWidget {
  final double star1;
  final double star2;
  final double star3;
  final double star4;
  final double star5;
  final Color purple;
  final Color orange;
  final Color teal;
  final Color yellow;
  final Color red;
  const Babystar({
    Key? key,
    this.star1 = 0,
    this.star2 = 0,
    this.star3 = 0,
    this.star4 = 0,
    this.star5 = 0,
    this.purple = const Color(0xFF765EF4),
    this.orange = const Color(0xFFEFA247),
    this.teal = const Color(0xFF61C39F),
    this.yellow = const Color(0xFFF1CA4A),
    this.red = const Color(0xFFDD4D56),
  }) : super(key: key);

  @override
  State<Babystar> createState() => _BabystarState();
}

class _BabystarState extends State<Babystar> {
  double star1 = 5;
  double star2 = 5;
  double star3 = 5;
  double star4 = 5;
  double star5 = 5;

  Color purple = const Color(0xFF765EF4);
  Color orange = const Color(0xFFEFA247);
  Color teal = const Color(0xFF61C39F);
  Color yellow = const Color(0xFFF1CA4A);
  Color red = const Color(0xFFDD4D56);

  @override
  void initState() {
    super.initState();
    star1 = widget.star1;
    star2 = widget.star2;
    star3 = widget.star3;
    star4 = widget.star4;
    star5 = widget.star5;
    purple = widget.purple;
    orange = widget.orange;
    teal = widget.teal;
    yellow = widget.yellow;
    red = widget.red;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          const SVGWidget(
            height: 300,
            width: 300,
            path: 'assets/starr/bg-01.svg',
            enableColor: false,
          ),
          if (star1.toInt() != 0)
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: SVGWidget(
                height: 300,
                width: 300,
                key: UniqueKey(),
                path: 'assets/1-${star1.toInt()}-01.svg',
                color: purple,
                enableColor: true,
              ),
            ),
          if (star2.toInt() != 0)
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: SVGWidget(
                height: 300,
                width: 300,
                key: UniqueKey(),
                path: 'assets/2-${star2.toInt()}-01.svg',
                color: orange,
                enableColor: true,
              ),
            ),
          if (star3.toInt() != 0)
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: SVGWidget(
                height: 300,
                width: 300,
                key: UniqueKey(),
                path: 'assets/3-${star3.toInt()}-01.svg',
                color: teal,
                enableColor: true,
              ),
            ),
          if (star4.toInt() != 0)
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: SVGWidget(
                height: 300,
                width: 300,
                key: UniqueKey(),
                path: 'assets/4-${star4.toInt()}-01.svg',
                color: yellow,
                enableColor: true,
              ),
            ),
          if (star5.toInt() != 0)
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: SVGWidget(
                height: 300,
                width: 300,
                key: UniqueKey(),
                path: 'assets/5-${star5.toInt()}-01.svg',
                color: red,
                enableColor: true,
              ),
            ),
        ],
      ),
    );
  }
}
