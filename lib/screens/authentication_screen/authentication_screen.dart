/*
*
*
* @autor: Vitor Reis dos Santos
* Descrição: Tela criada para o usuário cadastrar o seu Nome no Appp Fruit Hub
*
*
*/

import 'package:fruithub/abstract/colors_app.dart';
import 'package:fruithub/abstract/images_app.dart';
import 'package:fruithub/components/mont_Elevated_Button.dart';
import 'package:fruithub/components/mont_Form.dart';
import 'package:fruithub/screens/home_screen/home_screen.dart';
import 'package:fruithub/screens/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';


class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  _AuthenticationScreenState createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {

  final formController = TextEditingController();

  void salvar(){
    String nome;

    if(formController.text == formController.text.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Error')));
    }else{
      setState(() {
        nome = formController.text;

        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>HomeScreen(nome)),(Route<dynamic> route) => false);
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            children: [
              //Criando container para armazenar a imagem e estilizar
              Container(
                alignment: Alignment.bottomCenter,
                height: MediaQuery.of(context).size.height * .6,
                width: MediaQuery.of(context).size.width,
                color: ColorsApp().primaryColor,
                child:  montImage(imagesApp().imageCestaFrutas2),
              ),
              //Criando container para armazenar o texto e o botão que irão passar para página HomeScreen
              Container(
                height: MediaQuery.of(context).size.height * .4,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(left: 24, right: 24, top: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'What is your firstname?',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 17),
                      //Chamando Widget criado e estilizado para o app passando a largura e texto do form
                      montForm(MediaQuery.of(context).size.width, 'Chris', formController),
                      SizedBox(height: 58),
                      //Chamando Widget ElevatedButton estilizado, passando o texto e a largura
                      MontElevatedButton('Start Ordering', MediaQuery.of(context).size.width, 64, salvar),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
