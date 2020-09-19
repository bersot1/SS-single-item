import 'package:app/model/product.dart';
import 'package:app/utils/icon_widget.dart';
import 'package:app/view/product_details/local_widget/image_with_dotcolor.dart';
import 'package:app/view/product_details/local_widget/list_more_product_images.dart';
import 'package:app/view/product_details/local_widget/rating_with_count.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'local_widget/button_add_cart.dart';

class ProductDetails extends StatefulWidget {
  final ProductModel product;

  ProductDetails({@required this.product});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  List<String> pathImages = [
    "assets/imgs/nashville-front-blue.png",
    "assets/imgs/nashiville-side-blue2.png",
    "assets/imgs/nashiville-side-blue3.png",
    "assets/imgs/nashiville-back-blue4.png",
  ];

  int count = 1;

  _handlerAdd() {
    setState(() {
      count++;
    });
  }

  _handlerMin() {
    if (count > 1) {
      setState(() {
        count--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                "assets/icon/left-arrow.svg",
                width: 10,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: SIIcon(icon: SvgPicture.asset("assets/icon/bag.svg")),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: SIIcon(icon: SvgPicture.asset("assets/icon/group.svg")),
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          SIImageWithDotColor(product: widget.product),
          SIMoreProductImages(pathImages: pathImages),
          SIRatingsWithCount(
            handlerAdd: _handlerAdd,
            handlerMin: _handlerMin,
            product: widget.product,
          ),
          SizedBox(
            height: 20,
          ),
          SIButtonAddCart(),
        ],
      ),
    );
  }
}
