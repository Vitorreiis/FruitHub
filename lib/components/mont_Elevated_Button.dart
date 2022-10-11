import 'package:fruithub/abstract/colors_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MontElevatedButton extends StatelessWidget {

  String textButton;
  double widhtButton;
  double heightButton;
  void Function() press;

  MontElevatedButton(this.textButton, this.widhtButton, this.heightButton, this.press);


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widhtButton,
      height: heightButton,
      child: ElevatedButton(
        onPressed: press,
        style: ElevatedButton.styleFrom(
          primary: ColorsApp().primaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
        ),
        child: Text(
          "${textButton}",
          style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
