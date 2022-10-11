/*
*
*
*      Criando Widgets ItemCart que passa os cards e é chamado na homescreen
*
*
 */

import 'package:fruithub/abstract/colors_app.dart';
import 'package:fruithub/models/Product.dart';
import 'package:flutter/material.dart';

class ItemCart {
  final String name;
  final double value;
  final String image;

  ItemCart({
    required this.name,
    required this.value,
    required this.image,
  });
}

class ItemCard extends StatelessWidget {
  final Product product;
  final void Function() press;
  static List<ItemCart> listCart = <ItemCart>[];

  ItemCard({required this.product, required this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(left: 24, top: 16),
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 4,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.topRight,
              height: 30,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.wb_sunny_outlined),
              ),
            ),
          Container(
            margin: EdgeInsets.only(right: 16),
            height: 70,
            width: 70,
            child: Image.asset(
              product.image,
            ),
          ),
            Padding(
              padding:
                  EdgeInsets.only(bottom: 13, top: 13, left: 21, right: 21),
              child: Text(
                '${product.title}',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${product.price.toStringAsFixed(3)}',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: ColorsApp().colorValorProduct,
                    ),
                  ),
                  // SizedBox(width: 65,),
                  Container(
                    margin: EdgeInsets.only(left: 65),
                    alignment: Alignment.bottomRight,
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorsApp().colorBackaAdicionarRemover,
                    ),
                    child: IconButton(
                      onPressed: () async {
                        listCart.add(ItemCart(
                          name: product.title,
                          value: product.price,
                          image: product.image,
                        ));
                      },
                      icon: Icon(
                        Icons.add,
                        size: 25,
                      ),
                      alignment: Alignment.center,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
