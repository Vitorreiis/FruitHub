import 'package:flutter/material.dart';
import 'package:fruithub/components/mont_Elevated_Button.dart';
import 'package:fruithub/screens/home_screen/home_screen.dart';

import '../oderList_screen/orderList_screen.dart';

class OrderComplete extends StatelessWidget {
  const OrderComplete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: centerHome(),
    );
  }
}

/*
*
*
*      Criando Widgets da page
*
*
 */
Widget centerHome(){
  return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/order_complete.png'),
            SizedBox(height: 40,),
            Text(
              'Order Taken',
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w400
              ),
            ),
            SizedBox(height: 2,),
            Text(
              'Your order have been taken and is being attended to',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300
              ),
            ),
            SizedBox(height: 56,),
            MontElevatedButton('Track order', 208, 56, (){}),
            SizedBox(height: 24,),
            MontElevatedButton('Continue shopping', 183, 56, (){})
          ],
        ),
      ),
  );
}
