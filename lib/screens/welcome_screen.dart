import 'package:flutter/material.dart';
import 'package:restaurant_app/components/NavigatorTextButton.dart';
import 'package:restaurant_app/constants.dart';
import 'package:restaurant_app/objects/RestaurantArray.dart';
import 'package:restaurant_app/screens/login_screen.dart';
import 'package:restaurant_app/screens/registration_screen.dart';

class Welcome_screen extends StatelessWidget {
  static String id = 'welcome_screen';
  RestaurantArray users = RestaurantArray();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'food ordering app',
      //     style: kAppBarTextStyle,
      //   ),
      //   backgroundColor: kMainColor,
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(45.0),
              child: Text(
                'My Restaurant',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                ),
              ),
            ),
            CircleAvatar(
              radius: 100.0,
              backgroundImage: AssetImage('images/hamburger.jpg'),
            ),
            SizedBox(
              height: 30.0,
            ),
            NavigatorTextButton(
              text: 'Login',
              destination: LoginScreen.id,
              users: users,
            ),
            SizedBox(
              height: 10.0,
            ),
            NavigatorTextButton(
              text: 'Register',
              destination: RegistrationScreen.id,
              users: users,
            ),
          ],
        ),
      ),
    bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
              '© Hosain Pishgahi and Saeid Zare',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
          ),
        ),
    ),
    );
  }
}
