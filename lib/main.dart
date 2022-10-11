import 'package:fruithub/screens/authentication_screen/authentication_screen.dart';
import 'package:flutter/material.dart';
import 'package:fruithub/screens/splash_screen/splash_screen.dart';
import 'package:fruithub/screens/welcome_screen/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fruit Hub',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      initialRoute: '/splash',
      routes: {
        '/welcome': (_) => const WelcomeScreen(),
        '/splash': (_) => const SplashScreen(),
      },
    );
  }
}

