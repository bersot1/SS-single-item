import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SIIcon extends StatelessWidget {
  final SvgPicture icon;
  final Function func;
  SIIcon({
    Key key,
    @required this.icon,
    this.func,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 5),
      child: GestureDetector(
        onTap: func,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(1, 2),
                ),
              ]),
          child: IconButton(
            icon: icon,
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
