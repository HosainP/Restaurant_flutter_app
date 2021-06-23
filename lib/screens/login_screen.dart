import 'dart:io';

import 'package:flutter/material.dart';
import 'package:restaurant_app/constants.dart';
import 'package:restaurant_app/screens/main_panel_screen.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var _formKey = GlobalKey<FormState>();

  bool _passwordInvisibility = true;
  TextEditingController phoneNumberController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  RegExp phoneRegex = new RegExp("[0-9]{10,11}");

  @override
  void dispose() {
    phoneNumberController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: Text(
          'this is the login screen',
          style: kAppBarTextStyle,
        ),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
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
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  } else if (!phoneRegex.hasMatch(value)) {
                    return 'phone number is not valid!';
                  }
                  return null;
                },
                controller: phoneNumberController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Enter your phone number',
                  labelText: 'phone number',
                  icon: Icon(Icons.phone),
                  border: OutlineInputBorder(),
                ),
                maxLength: 11,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextFormField(
                validator: (String value) {
                  if (value.isEmpty) {
                    return "Please Enter Your Password";
                  } else if (value.length < 7) {
                    return "length must be more than 6";
                  }
                  return null;
                },
                controller: passwordController,
                obscureText: _passwordInvisibility,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.lock),
                  hintText: 'Enter your password',
                  labelText: 'password',
                  suffix: IconButton(
                    icon: Icon(_passwordInvisibility
                        ? Icons.visibility_off
                        : Icons.visibility),
                    onPressed: () {
                      setState(() {
                        _passwordInvisibility = !_passwordInvisibility;
                      });
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
              child: RawMaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                constraints: BoxConstraints.tightFor(
                  width: 250.0,
                  height: 50.0,
                ),
                // shape: CircleBorder(),
                fillColor: kMainColor,
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    _login(phoneNumberController.text, passwordController.text);
                  }
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _login(String user, String pass) async {
    await Socket.connect('10.0.2.2', 8080).then((serverSocket) {
      serverSocket.writeln('hLogin'); // this is the command for the server.

      serverSocket.writeln(user); //passing by the phone number
      serverSocket.writeln(pass); //          and the password.

      serverSocket.listen((socket) {
        var ans = String.fromCharCodes(socket).trim();
        if (ans == 'true')
          Navigator.pushNamed(context, MainPanel.id);
        else {
          // ans = false
          showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                    title: const Text(
                      'Error',
                      style: TextStyle(fontFamily: 'ubuntu'),
                    ),
                    content: const Text(
                      'username or password is incorrect.',
                      style: TextStyle(fontFamily: 'ubuntu'),
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  ));
        }
        setState(() {});
      });
      print('username and password are sent.');
      setState(() {});
    });
  }
}
