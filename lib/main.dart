import 'package:flutter/material.dart';
import 'package:restaurant_app/screens/login_screen.dart';
import 'package:restaurant_app/screens/main_panel_screen.dart';
import 'package:restaurant_app/screens/registration_screen.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

    // theme: ThemeData.dark(),
      initialRoute: Welcome_screen.id,
      routes: {
        Welcome_screen.id: (context) => Welcome_screen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context)=> LoginScreen(),
        MainPanel.id: (context)=> MainPanel(),
      },
    );
  }
}
