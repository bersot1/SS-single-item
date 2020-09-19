import 'package:app/model/product.dart';
import 'package:app/utils/icon_widget.dart';
import 'package:app/view/product_details/local_widget/dotcolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SIImageWithDotColor extends StatelessWidget {
  const SIImageWithDotColor({
    Key key,
    @required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        height: size.height / 3,
        child: Row(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(color: Colors.black12, offset: Offset(1, 3))
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: SIIcon(
                            icon: SvgPicture.asset("assets/icon/like.svg"),
                          ),
                        ),
                      ),
                      Center(
                        child: SizedBox(
                            height: 150,
                            child: Hero(
                              tag: product.id.toString(),
                              child: Image.asset(
                                product.path,
                                fit: BoxFit.fill,
                              ),
                            )),
                      )
                    ],
                  )),
            ),
            SizedBox(
              width: 30,
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(offset: Offset(1, 3), color: Colors.black12)
                  ],
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(60),
                    bottomLeft: Radius.circular(60),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    SiColorDot(
                      color: Colors.red,
                      isSelected: false,
                    ),
                    SiColorDot(
                      color: Colors.yellow,
                      isSelected: false,
                    ),
                    SiColorDot(
                      color: Colors.blue,
                      isSelected: true,
                    ),
                    SiColorDot(
                      color: Colors.green,
                      isSelected: false,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
