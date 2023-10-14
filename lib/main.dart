import 'package:flutter/material.dart';
import 'package:splash_screen/screens/homeScreen.dart';
import 'package:splash_screen/screens/splash.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.routeName:(_)=>SplashScreen(),
        HomeScreen.routeName:(_)=>HomeScreen(),
      },
     home: SplashScreen(),
    );
  }
}

