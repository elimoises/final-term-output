import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#20476b'),
      body: Column(
        children: [
          Container(
            height: 500,
            width: 500,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/rocketship.gif'),
              fit: BoxFit.contain,
            )),
            child: Center(
              child: Text(
                'Coming Soon!',
                style: GoogleFonts.montserrat(
                  color: Colors.black87,
                  fontSize: 55.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          FittedBox(
            child: FlatButton(
              child: Row(
                children: [
                  Icon(
                    Icons.logout,
                    size: 30.0,
                    color: Colors.white,
                  ),
                  Text(" Logout",
                      maxLines: 1,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal)),
                ],
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
          )
        ],
      ),
    );
  }
}
