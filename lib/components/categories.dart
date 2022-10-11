import 'package:flutter/material.dart';

import 'build_category.dart';
import 'list_viewCategories.dart';

class Categories extends StatefulWidget {


  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  List<String> categories = [
    'All',
    'Salad Combo',
    'Berry Combo',
    'Mango Berry',
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
      child: ContainerCategories(categories, index, selectedIndex),
    );
  }
}