import 'package:carocom/screens/MainScreen.dart';
import 'package:carocom/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'screens/Welcome/LoginScreen.dart';
import 'screens/Welcome/signupscreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final introKey = GlobalKey<IntroductionScreenState>();


  @override
  Widget build(BuildContext context) {
    

    return MaterialApp(
      initialRoute: LoginScreen.id,
      routes: {
        LoginScreen.id : (context)=> LoginScreen(),
        SignUp.id : (context)=>SignUp(),
         'Main' : (context)=>MainScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      theme: new ThemeData(),
      home:MainScreen(),





    );
  }
}

