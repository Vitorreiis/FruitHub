/*
*
*
*      Criando page Splash Screen
*
*
 */

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruithub/screens/welcome_screen/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Container(
          height: 500,
          width: 500,
          color: Colors.white,
          child: Center(
            child: SvgPicture.asset('assets/logoMarca.svg'),
          ),
        ),
        nextScreen: const WelcomeScreen(),
      splashIconSize: 500,
    );
  }
}