import 'package:app/model/product.dart';
import 'package:app/view/home/local_widget/card_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:app/utils/icon_widget.dart';
import 'package:app/view/home/local_widget/search_widget.dart';

import 'local_widget/list_filter_option.dart';

class HomeView extends StatelessWidget {
  List<String> namesFilter = [
    "All",
    "Chairs",
    "Sofas",
  ];

  List<ProductModel> listProduct = [
    ProductModel(
        id: 1,
        path: "assets/imgs/nashville-front-blue.png",
        price: "349,00",
        title: "Nashville"),
    ProductModel(
        id: 2,
        path: "assets/imgs/floor-lamp.png",
        price: "129,00",
        title: "Floor Lamp"),
    ProductModel(
        id: 3,
        path: "assets/imgs/tripod-lamp.png",
        price: "119,00",
        title: "Tripod Lamp"),
    ProductModel(
        id: 4,
        path: "assets/imgs/accent-chair.png",
        price: "89,00",
        title: "Accent Chair"),
    ProductModel(
        id: 5,
        path: "assets/imgs/marie-stool.png",
        price: "69,00",
        title: "Marie Stool"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
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
      body: Column(
        children: [
          SISearch(),
          SIListOptionFilter(namesFilter: namesFilter),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
              itemCount: listProduct.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (_, i) {
                var item = listProduct[i];
                return SICardProduct(product: item);
              },
            ),
          )),
        ],
      ),
    );
  }
}
