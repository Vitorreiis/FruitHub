import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruithub/abstract/colors_app.dart';
import 'package:fruithub/components/item_cards.dart';
import 'package:fruithub/screens/orderComplete_screen/orderComplete_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import '../../components/mont_Elevated_Button.dart';
import 'package:path_provider/path_provider.dart';

class OrderList extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<OrderList> {
  final _toDoController = TextEditingController();
  var soma = 0.0;
  var diminuir = 0.0;

  /// Launching the app and loading the information contained in the data
  @override
  void initState() {
    super.initState();
  }

  /// Home Screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsApp().primaryColor,
        elevation: 0,
        toolbarHeight: 135,
        leadingWidth: 110,
        leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              margin: EdgeInsets.only(top: 45, left: 24, bottom: 45),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Row(
                children: const [
                  Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.black,
                  ),
                  Text(
                    'Go back',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ],
              ),
            )),
        title: Text(
          'My Basket',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
      ),
      body: buildItem(context),
    );
  }

  Widget buildItem(BuildContext context) {
    return Column(
      children: [
        ...List.generate(ItemCard.listCart.length, (index) {
          soma += ItemCard.listCart[index].value;
          diminuir += ItemCard.listCart[index].value;
          return Padding(
            padding: EdgeInsets.only(left: 24, right: 24, bottom: 32),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 16),
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                  color: ColorsApp().colorBackGroundItem,
                  child: Container(
                    margin: EdgeInsets.only(right: 16),
                    color: Colors.white,
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      ItemCard.listCart[index].image,
                      height: 20,
                      width: 20,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ItemCard.listCart[index].name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Valor',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      ItemCard.listCart[index].value.toStringAsFixed(3),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorsApp().colorBackaAdicionarRemover,
                  ),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        ItemCard.listCart.removeAt(index);
                      });
                    },
                    icon: Icon(
                      Icons.remove,
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
        Spacer(),
        Container(
          margin: EdgeInsets.only(bottom: 49),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Total', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                      Text(soma.toStringAsFixed(3), style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),),
                    ],
                  )
              ),
              Container(
                margin: EdgeInsets.only(right: 24),
                child: MontElevatedButton('Checkout', 199, 56, (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OrderComplete()));
                }),
              )
            ],
          ),
        ),
      ],
    );
  }

}
