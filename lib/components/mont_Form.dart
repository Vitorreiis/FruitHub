/*
*
*
*      Criando molde para o TextFormField que será chamado em varias páginas
*
*
 */


import 'package:fruithub/abstract/colors_app.dart';
import 'package:flutter/material.dart';

class montForm extends StatelessWidget {
  double width;
  String text;
  final TextEditingController? textController;

  montForm(this.width, this.text, this.textController);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 16, bottom: 16, left: 15),
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ColorsApp().formBackgroundColor,
      ),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
        controller: textController,
        decoration: InputDecoration.collapsed(
          hintText: '${text}',
          hintStyle: TextStyle(
              color: ColorsApp().colorTextForm,
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
