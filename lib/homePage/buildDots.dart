import 'package:flutter/material.dart';
import '../color.dart';

class BuildDots extends StatefulWidget {
  const BuildDots({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  State<BuildDots> createState() => _BuildDotsState();
}

class _BuildDotsState extends State<BuildDots> {
  Widget InActive() {
    return Container(
      margin: const EdgeInsets.only(left: 5, right: 5),
      width: 14,
      height: 14,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 1),
          borderRadius: BorderRadius.circular(7),
          color: ColorPalette().scaffoldBg),
    );
  }

  Widget Active() {
    return Container(
      margin: const EdgeInsets.only(left: 5, right: 5),
      width: 14,
      height: 14,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7), color: Colors.blue),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> res = [];
    List<Widget> com() {
      for (int i = 0; i < 4; i++) {
        if (i == widget.currentIndex) {
          res.add(Active());
        } else {
          res.add(InActive());
        }
      }
      return res;
    }

    return Row(
      children: com(),
    );
  }
}
