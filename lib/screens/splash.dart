import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splash_screen/screens/homeScreen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'SplashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context)=>HomeScreen()
        )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.redAccent),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 50,
                          child: Icon(
                            Icons.shopping_cart,
                            color: Colors.lightGreen,
                            size: 50,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Text(
                          "FlutKart",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.yellowAccent),),
                      Padding(padding: EdgeInsets.only(top: 12)),
                      Text(
                        "Online Store\nFor Everyone",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )
                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }
}
