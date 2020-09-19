import 'package:flutter/material.dart';

class SIMoreProductImages extends StatelessWidget {
  const SIMoreProductImages({
    Key key,
    @required this.pathImages,
  }) : super(key: key);

  final List<String> pathImages;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30, left: 20),
      child: Container(
        height: 80,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: pathImages.length,
            itemBuilder: (_, i) {
              var item = pathImages[i];
              return Padding(
                padding: EdgeInsets.only(right: 20, bottom: 10),
                child: Container(
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(offset: Offset(1, 3), color: Colors.black12),
                      ],
                      image: DecorationImage(image: AssetImage(item))),
                ),
              );
            }),
      ),
    );
  }
}
