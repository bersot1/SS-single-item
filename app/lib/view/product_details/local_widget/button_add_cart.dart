import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SIButtonAddCart extends StatelessWidget {
  const SIButtonAddCart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            color: Color(0xff05041C),
            boxShadow: [BoxShadow(offset: Offset(2, 2), color: Colors.white)],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(70),
              topRight: Radius.circular(70),
            )),
        child: Row(
          children: [
            SizedBox(
              width: 70,
            ),
            SvgPicture.asset(
              "assets/icon/cart.svg",
              width: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "add to cart",
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
