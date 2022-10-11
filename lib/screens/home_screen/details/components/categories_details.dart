import 'package:fruithub/components/build_category.dart';
import 'package:fruithub/components/list_viewCategories.dart';
import 'package:flutter/material.dart';

class CategoriesDetails extends StatefulWidget {


  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<CategoriesDetails> {


  ///Criando lista de String
  List<String> categories = [
    'Red Quinoa',
    'Lime',
    'Honey',
    'Blueberrie',
    'Mango',
    'Strawberries',
    'Fresh Mint',
  ];


  ///criando uma variavél que inicia com 0
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    ///chamando Widget ListViewCategories
    return ListViewCategories(categories, buildCategory);
  }


  /*
*
*
*      Criando Widgets da page
*
*
 */
  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedIndex = index;
        });
      },
      ///chamando Widget ContainerCategories
      child: ContainerCategories(categories, index, selectedIndex),
    );
  }
}