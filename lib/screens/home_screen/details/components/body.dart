import 'package:fruithub/abstract/colors_app.dart';
import 'package:fruithub/components/categories.dart';
import 'package:fruithub/components/mont_Elevated_Button.dart';
import 'package:fruithub/models/Product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'categories_details.dart';

class Body extends StatelessWidget {
  final Product product;

  Body({required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<String> categories = [
      'Red Quinoa',
      'Lime',
      'Honey',
      'Blueberries',
      'Mango',
      'Strawberries',
      'Fresh Mint',
    ];

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Container(
              height: 200,
              width: 200,
              child: Image.asset(product.image),
            )
    // Image.asset('assets/product2.svg'),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          height: 498,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 24, top: 24, bottom: 24),
                child: Text(product.title, style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ), ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  rowQuantidade(),
                  Padding(
                    padding: EdgeInsets.only(right: 24),
                    child: Text(
                      'Valor total',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 24, top: 36),
                child: Text(
                  'This combo contains:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 24, bottom: 16),
                height: 3,
                width: 60,
                color: ColorsApp().colorValorProduct,
              ),
              CategoriesDetails(),
              Padding(padding: EdgeInsets.only(left: 24, top: 34),
                child: Text(
                  'If you are looking for a new fruit salad to eat '
                      'today, quinoa is the perfect brunch for you. make',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300
                  ),
                ),),
              SizedBox(height: 60,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: Container(
                        decoration: BoxDecoration(
                            color: ColorsApp().colorBackCurtida,
                            shape: BoxShape.circle
                        ),
                        child: IconButton(onPressed: (){},
                          icon: Icon(Icons.add),
                        ),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 24),
                    child: MontElevatedButton('Add To Basket', 219, 56, (){}),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
    //         child: Column(
//           children: [
//             Container(
// color: Colors.yellow,
//             ),
//             // SizedBox(
//             //   height: size.height,
//             // child: Stack(
//             //   children: [
//             //     Container(
//             //       margin: EdgeInsets.only(top: size.height * 0.3),
//             //       // height: 500,
//             //       decoration: BoxDecoration(
//             //         color: Colors.white,
//             //         borderRadius: BorderRadius.only(
//             //           topLeft: Radius.circular(30),
//             //           topRight: Radius.circular(30)
//             //         )
//             //       ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.only(left: 24, top: 24, bottom: 24),
//                       child: Text(product.title, style: TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.w500,
//                       ), ),
//                           ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           rowQuantidade(),
//                           Padding(
//                             padding: EdgeInsets.only(right: 24),
//                             child: Text(
//                               'Valor total',
//                               style: TextStyle(
//                                 fontSize: 24,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(left: 24, top: 36),
//                         child: Text(
//                           'This combo contains:',
//                           style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
//                         ),
//                       ),
//                       Container(
//                         margin: EdgeInsets.only(left: 24, bottom: 16),
//                         height: 3,
//                         width: 60,
//                         color: ColorsApp().colorValorProduct,
//                       ),
//                       CategoriesDetails(),
//                       Padding(padding: EdgeInsets.only(left: 24, top: 34),
//                       child: Text(
//                         'If you are looking for a new fruit salad to eat '
//                             'today, quinoa is the perfect brunch for you. make',
//                         style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w300
//                         ),
//                       ),),
//                       SizedBox(height: 60,),
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.only(left: 24),
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 color: ColorsApp().colorBackCurtida,
//                                 shape: BoxShape.circle
//                               ),
//                               child: IconButton(onPressed: (){},
//                                 icon: Icon(Icons.add),
//                               ),
//                             )
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(right: 24),
//                             child: MontElevatedButton('Add To Basket', 219, 56, (){}),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 Image.asset('assets/product1.png')
//               ],
//             ),
//             )
//           ],
//         ));
  }
}

Widget rowQuantidade() {
  return Row(
    children: [
      Container(
        margin: EdgeInsets.only(left: 24),
        width: 40,
        height: 40,
        child: IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
        decoration: BoxDecoration(
          color: ColorsApp().colorBackaAdicionarRemover,
          shape: BoxShape.circle,
        ),
      ),
      SizedBox(
        width: 24,
      ),
      Text('num'),
      SizedBox(
        width: 24,
      ),
      Container(
        width: 40,
        height: 40,
        child: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
        decoration: BoxDecoration(
          color: ColorsApp().colorBackaAdicionarRemover,
          shape: BoxShape.circle,
        ),
      ),
    ],
  );
}

Widget containerCategoryDetails(String text) {
  return Container(
    alignment: Alignment.center,
    margin: EdgeInsets.only(right: 12, bottom: 3, top: 3),
    padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.white,
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
      text,
      style: TextStyle(
          fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF333333)),
    ),
  );
}
