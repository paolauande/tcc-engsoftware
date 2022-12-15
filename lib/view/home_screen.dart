import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

User loggedinUser;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _auth = FirebaseAuth.instance;

  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser;
      if (user != null) {
        loggedinUser = user;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFFF755FEB),
                ),
                child: Text(
                  'Seja bem vindo!',
                  style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: const Text(
                  'Meu Perfil',
                  style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.black),
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: const Text(
                  'Sair do app',
                  style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.black),
                ),
                onTap: () {
                  _auth.signOut();
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      'login_screen', (Route<dynamic> route) => false);
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color(0xFFF755FEB),
        ),
        body: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                color: Color(0xFFF755FEB),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        "Você conhece algum cachorro ou gato que\nprecisa de um novo lar? \ncadastre agora",
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'register_screen');
                        },
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(width: 1.0, color: Colors.white),
                        ),
                        child: const Text(
                          "cadastrar pet",
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                )),
            Container()
          ],
        ));
  }
}
