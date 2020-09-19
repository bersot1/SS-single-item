import 'package:flutter/material.dart';

class SIFilterOption extends StatelessWidget {
  final String text;

  const SIFilterOption({@required this.text});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: size.width / 3,
        height: size.height / 20,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            bottomLeft: Radius.circular(40),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(1, 3),
              color: Colors.black12,
            )
          ],
        ),
        child: Center(
            child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        )),
      ),
    );
  }
}
