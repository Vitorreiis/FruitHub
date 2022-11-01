import 'package:fruithub/abstract/colors_app.dart';
import 'package:fruithub/components/categories.dart';
import 'package:fruithub/components/mont_Elevated_Button.dart';
import 'package:fruithub/models/Product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'categories_details.dart';

class Body extends StatefulWidget {
   final Product product;

  const Body({super.key, required this.product});

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {


  @override
  Widget build(BuildContext context) {

    double soma = 0;

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
                child: Image.asset(widget.product.image),
              )
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
                child: Text(widget.product.title, style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ), ),
              ),
                  RowQuant(product: widget.product,),
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
  }
}
class RowQuant extends StatefulWidget {
  Product product;

  RowQuant({required this.product});

  @override
  _RowQuantState createState() => _RowQuantState();
}

class _RowQuantState extends State<RowQuant> {
  @override
  int quantidade = 1;
  double total = 0;

  @override
  void initState() {
    super.initState();
    total = widget.product.price;
  }

  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 24),
          width: 40,
          height: 40,
          child: IconButton(
              onPressed: () {
            setState(() {
              if(total != 0) {
                total -= widget.product.price;
                quantidade--;
              }
            });
          }, icon: Icon(Icons.remove)),
          decoration: BoxDecoration(
            color: ColorsApp().colorBackaAdicionarRemover,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(
          width: 24,
        ),
        Text(
            '${quantidade}'
        ),
        SizedBox(
          width: 24,
        ),
        Container(
          width: 40,
          height: 40,
          child: IconButton(onPressed: () {
            setState(() {
              total += widget.product.price;
              quantidade++;
            });
          }, icon: Icon(Icons.add)),
          decoration: BoxDecoration(
            color: ColorsApp().colorBackaAdicionarRemover,
            shape: BoxShape.circle,
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(right: 24),
          child: Text(
            '${total.toStringAsFixed(3)}',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
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
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xFF333333)),
      ),
    );
  }
}