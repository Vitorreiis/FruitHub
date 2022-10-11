import 'package:flutter/material.dart';

import 'build_CategoriesPopular.dart';
import 'build_category.dart';
import 'list_viewCategories.dart';

class CategoriesPopular extends StatefulWidget {


  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<CategoriesPopular> {

  List<String> categories = [
    'Hottest',
    'Popular',
    'New Combo',
  ];


  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListViewCategories(categories, buildCategory);
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedIndex = index;
        });
      },
      child: ContainerCategoriesPopular(categories, index, selectedIndex),
    );
  }
}