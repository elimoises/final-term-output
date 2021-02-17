import 'package:animated_login/home.dart';
import 'package:animated_login/screens/Login.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: HexColor('#20476b'),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Login(),
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => Login(),
        '/home': (BuildContext context) => Home()
      },
    );
  }
}
