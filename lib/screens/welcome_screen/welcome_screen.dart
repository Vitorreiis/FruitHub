
/*
*
*
* @autor: Vitor Reis dos Santos
* Descrição: Tela criada para o usuário ler a descrição e passar para página
* de autenticação por meio do botão
*
*
*/

import 'package:fruithub/abstract/colors_app.dart';
import 'package:fruithub/abstract/images_app.dart';
import 'package:fruithub/components/mont_Elevated_Button.dart';
import 'package:flutter/material.dart';

import '../authentication_screen/authentication_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
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
              child: montImage(imagesApp().imageCestaFrutas)),
          //Criando container para armazenar o texto e o botão que irão passar para página Authentication
          Container(
            height: MediaQuery.of(context).size.height * .4,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(left: 24, right: 24, top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Chamando Widget criado com o texto da página
                  montTextDescription(),
                  SizedBox(height: 80),
                  //Chamando Widget ElevatedButton estilizado, passando o texto e a largura
                  MontElevatedButton('Let’s Continue', MediaQuery.of(context).size.width, 64, (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AuthenticationScreen()));
                  }),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}


/*
*
*
*      Criando Widgets da page
*
*
 */
Widget montImage(String image) {
  return Padding(
    padding: EdgeInsets.only(bottom: 34),
    child: Image.asset(
      image,
      alignment: Alignment.bottomCenter,
    ),
  );
}

//Criando Widget para estilizar o Texto da pagina
Widget montTextDescription() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Get The Freshest Fruit Salad Combo',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
      SizedBox(height: 8),
      Text(
        'We deliver the best and freshest fruit salad in town. Order for a combo today!!!',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          //Chamando variável que armazena a cor do texto
          color: ColorsApp().textParagraph,
        ),
      ),
    ],
  );
}
