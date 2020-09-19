import 'package:flutter/material.dart';

class SiColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const SiColorDot({this.color, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        padding: EdgeInsets.all(2.5),
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected ? Color(0xff356c95) : Colors.transparent,
          ),
        ),
        child: DecoratedBox(
            decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        )),
      ),
    );
  }
}
