import 'package:fruithub/abstract/colors_app.dart';
import 'package:fruithub/components/categories.dart';
import 'package:fruithub/components/item_cards.dart';
import 'package:fruithub/components/mont_Form.dart';
import 'package:fruithub/models/Product.dart';
import 'package:fruithub/screens/home_screen/details/details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../components/categoriesPopular.dart';

class BodyHomeScreen extends StatelessWidget {
  const BodyHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> categoriesCard = [
      'Hottest',
      'Popular',
      'New Combo',
    ];

    return Container(
      padding: EdgeInsets.only(top: 32),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 24),
                child: montForm(MediaQuery.of(context).size.width - 92,
                    'Search for fruit salad combos', TextEditingController()),
              ),
              Container(
                margin: EdgeInsets.only(left: 4, right: 24),
                width: 40,
                height: 60,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.wrap_text, color: Colors.black),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorsApp().formBackgroundColor,
                ),
              ),
            ],
          ),
          Categories(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 24, top: 36),
                child: Text(
                  'Recommended Combo',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 24, bottom: 16),
                height: 3,
                width: 60,
                color: ColorsApp().colorValorProduct,
              ),
            ],
          ),
          Container(
            height: 230,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) => ItemCard(
                  product: products[index],
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              DetailsScreen(product: products[index])))),
            ),
          ),
          CategoriesPopular(),
          Container(
            height: 230,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                return index != 0 && index != 1
                   ?ItemCard(
                      product: products[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DetailsScreen(product: products[index]))))
                :SizedBox.shrink();
              },
            ),
          ),
        ],
      ),
    );
  }
}
