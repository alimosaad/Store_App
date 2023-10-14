import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
static const String routeName='HomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),

      ),
      body: Center(child: Text("Welcome",style: TextStyle(fontSize: 25,color: Colors.black),)),
    );
  }
}
