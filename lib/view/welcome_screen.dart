import 'package:flutter/material.dart';
import '../utils/default_button.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF755FEB),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                DefaultButton(
                  colour: Colors.white,
                  title: 'Login',
                  onPressed: () {
                    Navigator.pushNamed(context, 'login_screen');
                  },
                ),
                DefaultButton(
                    colour: Colors.white,
                    title: 'Cadastrar',
                    onPressed: () {
                      Navigator.pushNamed(context, 'sign_up_screen');
                    }),
              ]),
        ));
  }
}
