import 'package:fruithub/abstract/colors_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../oderList_screen/orderList_screen.dart';
import 'body_home-screen.dart';

class HomeScreen extends StatefulWidget {
  String nome;

  HomeScreen(this.nome);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        actions: [
          ButtonActions(context), //Chamando Widget actions Criado para a Appbar
        ],
        leading: ButtonLeading(), //Chamando Widget leading Criado para a Appbar
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        elevation: 0,
        title: Text(
          'Welcome, ${widget.nome}.',
          style: TextStyle(
            color: ColorsApp().colorThemeAppBar,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
      ),
      body: BodyHomeScreen(), //Chamando Screen criada
    );
  }
}


/// Criando Widget ButtonActions que é chamando na AppBar da homeScreen
Widget ButtonActions(BuildContext context) {
  return Container(
      width: 48,
      margin: EdgeInsets.only(right: 24, top: 5, bottom: 5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: IconButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => OrderList()));
        },
        icon: Icon(Icons.wallet_travel,
            color: ColorsApp().primaryColor, size: 24),
      ));
}


/// Criando Widget ButtonLeading que é chamando na AppBar da homeScreen
Widget ButtonLeading() {
  return Padding(
    padding: EdgeInsets.only(left: 17),
    child: IconButton(
      onPressed: () {},
      icon: Icon(Icons.view_headline_outlined,
          color: ColorsApp().colorThemeAppBar),
    ),
  );
}
