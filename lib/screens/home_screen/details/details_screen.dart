import 'package:fruithub/abstract/colors_app.dart';
import 'package:fruithub/models/Product.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class DetailsScreen extends StatelessWidget {

  final Product product;
  DetailsScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp().primaryColor,
      appBar: buildAppBar(context),
      body: Body(product: product,),
    );
  }
  AppBar buildAppBar (BuildContext context){
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      toolbarHeight: 60,
      leadingWidth: 110,
      leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            margin: EdgeInsets.only(top: 20, left: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Row(
              children: const [
                Icon(Icons.keyboard_arrow_left, color: Colors.black,),
                Text(
                  'Go back',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    color: Colors.black
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}