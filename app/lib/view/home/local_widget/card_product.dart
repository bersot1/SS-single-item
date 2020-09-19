import 'package:app/model/product.dart';
import 'package:app/view/product_details/product_details.dart';
import 'package:flutter/material.dart';

class SICardProduct extends StatelessWidget {
  final ProductModel product;
  SICardProduct({
    @required this.product,
  });

  goToProductDetails(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (_) {
      return ProductDetails(product: product);
    }));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => goToProductDetails(context),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        child: Container(
          width: size.width / 2.7,
          height: size.height / 3.5,
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
              )
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Hero(
                    tag: product.id.toString(),
                    child: Image.asset(
                      product.path,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                product.title,
                style: Theme.of(context).textTheme.headline6.copyWith(
                      color: Colors.blue.withOpacity(0.6),
                    ),
              ),
              Text(
                product.price,
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
