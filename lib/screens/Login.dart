import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //pop-up if the email or password is incorrect
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Incorrect email or password.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Try Again'),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
          ],
        );
      },
    );
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Widget _email() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 35.0, vertical: 4.0),
        child: TextField(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white10,
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white54,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.cyanAccent, width: 1.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.white, width: 1.0),
              ),
              hintText: 'Enter your email',
              hintStyle:
                  GoogleFonts.lato(color: Colors.white54, fontSize: 14.0)),
        ));
  }

  Widget _password() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 35.0, vertical: 4.0),
        child: TextField(
          controller: passwordController,
          keyboardType: TextInputType.visiblePassword,
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white10,
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.white54,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.cyanAccent, width: 1.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.white, width: 1.0),
              ),
              hintText: 'Enter your password',
              hintStyle:
                  GoogleFonts.lato(color: Colors.white54, fontSize: 14.0)),
          autofocus: false,
          obscureText: true,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#20476b'),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(5.0, 30.0, 5.0, 5.0),
              child: Image.asset('assets/skyTravel.gif'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to SkyTravel',
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                )
              ],
            ),
            //email address label
            Container(
                margin: EdgeInsets.symmetric(horizontal: 35.0, vertical: 5.0),
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Email Address',
                      style:
                          GoogleFonts.lato(color: Colors.white, fontSize: 14.0),
                    ))),
            //email address textfield
            Container(
              child: _email(),
            ),
            //password label
            Container(
                margin: EdgeInsets.symmetric(horizontal: 35.0, vertical: 5.0),
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Password',
                      style:
                          GoogleFonts.lato(color: Colors.white, fontSize: 14.0),
                    ))),
            //password textfield
            Container(
              child: _password(),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 35.0, vertical: 5.0),
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Forgot Password?',
                      style: GoogleFonts.lato(
                          color: Colors.white54, fontSize: 14.0),
                    ))),
            //Login button
            Container(
              child: FlatButton(
                onPressed: () {
                  if (emailController.text == "cictapps@wvsu.edu.ph" &&
                      passwordController.text == "toor") {
                    Navigator.pushNamed(context, '/home');
                  }
                  //if email and password is incorrect, a dialog box will pop-up
                  else {
                    _showMyDialog();
                  }
                },
                splashColor: Colors.white30,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.lock_open,
                        size: 40.0,
                        color: Colors.white,
                      ),
                      Text(
                        "Log In",
                        maxLines: 1,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //Sign up button
            Container(
              child: FlatButton(
                onPressed: () {},
                splashColor: Colors.white30,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.person_add_alt,
                        size: 30.0,
                        color: Colors.white,
                      ),
                      Text(
                        " Sign Up",
                        maxLines: 1,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
