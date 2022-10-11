/*
*
*
*      Criando Widget que é um ListView onde irá carregar os cards dentro dele
*
*
 */

import 'package:flutter/material.dart';

class ListViewCategories extends StatelessWidget {
  List<String> categories;
  Function buildCategory;

  ListViewCategories(this.categories, this.buildCategory);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 18),
        height: 41,
      child: ListView.builder(
          padding: EdgeInsets.only(left: 24),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index)),
    );
  }
}
