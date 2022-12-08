import 'package:adotepet/view/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'view/welcome_screen.dart';
import 'view/home_screen.dart';
import 'view/signup_screen.dart';
import 'view/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'welcome_screen',
      debugShowCheckedModeBanner: false,
      routes: {
        'welcome_screen': (context) => WelcomeScreen(),
        'sign_up_screen': (context) => SignUpScreen(),
        'login_screen': (context) => LoginScreen(),
        'home_screen': (context) => HomeScreen(),
        'register_screen': (context) => RegisterScreen()
      },
    );
  }
}
