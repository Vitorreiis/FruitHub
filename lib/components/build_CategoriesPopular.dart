import 'package:flutter/material.dart';

import '../abstract/colors_app.dart';

class ContainerCategoriesPopular extends StatelessWidget {

  int selectedIndex;
  int index;
  List<String> categories;

  ContainerCategoriesPopular(this.categories, this.index, this.selectedIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 12, bottom: 3, top: 3),
      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            categories[index],
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: selectedIndex == index ? Colors.black : Color(0xFF333333)),
          ),
          Container(
            height: 1,
            width: 30,
            color: ColorsApp().colorValorProduct,
          ),
        ],
      )
    );
  }
}
