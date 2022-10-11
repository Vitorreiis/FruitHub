/*
*
*
*      Criando Widgets ContainerCategories para ser chamado nas páginas
*
*
 */

import 'package:flutter/material.dart';

class ContainerCategories extends StatelessWidget {

  int selectedIndex;
  int index;
  List<String> categories;

  ContainerCategories(this.categories, this.index, this.selectedIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 12, bottom: 3, top: 3),
      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: selectedIndex == index ? Colors.blue : Colors.white,
        border: null,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 2,
            offset: Offset(1, 1),
          ),
        ],
      ),
      child: Text(
        categories[index],
        style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: selectedIndex == index ? Colors.white : Color(0xFF333333)),
      ),
    );
  }
}
