import 'package:flutter/material.dart';
import 'package:restaurant_app/objects/Food.dart';
import 'package:restaurant_app/screens/comments_manager_screen.dart';
import 'package:restaurant_app/screens/current_orders_screen.dart';
import 'package:restaurant_app/screens/food_details_screen.dart';
import 'package:restaurant_app/screens/login_screen.dart';
import 'package:restaurant_app/screens/main_panel_screen.dart';
import 'package:restaurant_app/screens/registration_screen.dart';
import 'package:restaurant_app/screens/reports_screen.dart';
import 'package:restaurant_app/screens/restaurant_menu_screen.dart';
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
        LoginScreen.id: (context) => LoginScreen(),
        MainPanel.id: (context) => MainPanel(),
        RestaurantMenuScreen.id: (context) => RestaurantMenuScreen(),
        CommentsManagerScreen.id: (context) => CommentsManagerScreen(),
        CurrentOrdersScreen.id: (context) => CurrentOrdersScreen(),
        ReportsScreen.id: (context) => ReportsScreen(),
        // FoodDetailsScreen.id: (context) => FoodDetailsScreen(), //didn't work and i don't know why.
      },
    );
  }
}
