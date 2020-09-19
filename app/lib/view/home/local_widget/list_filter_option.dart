import 'package:app/view/home/local_widget/filter_option.dart';
import 'package:flutter/material.dart';

class SIListOptionFilter extends StatelessWidget {
  const SIListOptionFilter({
    Key key,
    @required this.namesFilter,
  }) : super(key: key);

  final List<String> namesFilter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, top: 20),
      child: Container(
        height: 50,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: namesFilter.length,
            itemBuilder: (_, index) {
              var item = namesFilter[index];
              return SIFilterOption(
                text: item,
              );
            }),
      ),
    );
  }
}
