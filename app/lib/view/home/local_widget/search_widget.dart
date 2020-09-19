import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SISearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Container(
        width: double.infinity,
        height: size.height / 13,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(60),
            bottomLeft: Radius.circular(60),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(1, 3),
              color: Colors.black12,
            ),
          ],
        ),
        child: Row(
          children: [
            SizedBox(
              width: 50,
            ),
            SvgPicture.asset("assets/icon/search.svg"),
            SizedBox(
              width: 20,
            ),
            Text(
              "Search",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
