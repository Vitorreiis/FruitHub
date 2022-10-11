import 'package:fruithub/components/build_category.dart';
import 'package:fruithub/components/list_viewCategories.dart';
import 'package:flutter/material.dart';

class CategoriesDetails extends StatefulWidget {


  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<CategoriesDetails> {

  List<String> categories = [
    'Red Quinoa',
    'Lime',
    'Honey',
    'Blueberrie',
    'Mango',
    'Strawberries',
    'Fresh Mint',
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