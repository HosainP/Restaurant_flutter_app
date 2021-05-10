import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/components/MyTextField.dart';
import 'package:restaurant_app/components/NavigatorTextButton.dart';
import 'package:restaurant_app/constants.dart';
import 'package:restaurant_app/screens/main_panel_screen.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          'this is the login screen',
          style: kAppBarTextStyle,
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(20.0),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25.0, bottom: 25.0),
            child: Text(
              'Login:',
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
              child: MyTextField(
                hintText: 'Enter your phone number',
                labelText: 'phone number',
                icon: Icon(Icons.phone),
                obscure: false,
              )),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: MyTextField(
              hintText: 'Enter your password',
              labelText: 'password',
              icon: Icon(Icons.security),
              obscure: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
            child: NavigatorTextButton(
              text: 'Login',
              destination: MainPanel.id,
            ),
          ),
        ],
      ),
    );
  }
}
