import 'package:app/model/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SIRatingsWithCount extends StatefulWidget {
  final ProductModel product;
  final Function handlerAdd;
  final Function handlerMin;

  const SIRatingsWithCount(
      {@required this.product,
      @required this.handlerAdd,
      @required this.handlerMin});
  @override
  _SIRatingsWithCountState createState() => _SIRatingsWithCountState();
}

int count = 1;

class _SIRatingsWithCountState extends State<SIRatingsWithCount> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 150,
        child: Row(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(offset: Offset(3, 3), color: Colors.black12),
                  ],
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(60),
                    bottomLeft: Radius.circular(60),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      widget.product.title,
                      style: Theme.of(context).textTheme.headline5.copyWith(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RatingBar(
                      itemSize: 30,
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 10,
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "\$${widget.product.price}",
                      style: Theme.of(context).textTheme.headline5.copyWith(),
                    ),
                  ],
                ),
              ),
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
                    BoxShadow(
                      offset: Offset(2, 2),
                      color: Colors.black12,
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    bottomRight: Radius.circular(70),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    IconButton(
                        icon: Icon(Icons.add), onPressed: widget.handlerAdd),
                    Text(
                      "$count",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        icon: Icon(Icons.minimize),
                        onPressed: widget.handlerMin),
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
