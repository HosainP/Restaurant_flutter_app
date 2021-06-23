import 'dart:io';

import 'package:flutter/material.dart';
import 'package:restaurant_app/constants.dart';
import 'package:restaurant_app/screens/main_panel_screen.dart';

class RegistrationScreen extends StatefulWidget {
  static String id = 'registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  var _formKey = GlobalKey<FormState>();

  bool _passwordInvisibility = true;
  TextEditingController nameController = new TextEditingController();
  TextEditingController foodCategoryController = new TextEditingController();
  TextEditingController phoneNumberController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  RegExp phoneRegex = new RegExp("[0-9]{10,11}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: Text(
          'this is the registration screen',
          style: kAppBarTextStyle,
        ),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(20.0),
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0, bottom: 25.0),
              child: Text(
                'Registration:',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please the name of restaurant';
                  }
                  return null;
                },
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.restaurant_menu),
                  hintText: 'Enter name of the restaurant',
                  labelText: 'name of the restaurant',
                  // suffix: Icon(Icons.text_fields),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the food category';
                  }
                  return null;
                },
                controller: foodCategoryController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.fastfood),
                  hintText: 'Enter the food category',
                  labelText: 'food category',
                  // suffix: Icon(Icons.text_fields),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
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
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please your password';
                  }
                  return null;
                },
                controller: passwordController,
                obscureText: _passwordInvisibility,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.security),
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
            //TODO location field should be added.
            // Padding(
            //   padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            //   child: FoodCategoryFormField(),
            // ), // TODO food category form field.
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 10.0),
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
                    if (!doesRestaurantExist(phoneNumberController.text)) {
                      _Register(phoneNumberController.text, nameController.text,
                          passwordController.text, foodCategoryController.text);
                      Navigator.pushNamed(context, MainPanel.id);
                    }
                  }
                },
                child: Text(
                  'Register',
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

  bool doesRestaurantExist(String phoneNumber) {
    // TODO , must be done!
    return false;
  }

  void _Register(String phoneNumber, String name, String password,
      String foodCategory) async {
    await Socket.connect('10.0.2.2', 8080).then((serverSocket) {
      serverSocket.writeln('hRegister'); // this is the command for the server.

      serverSocket.writeln(phoneNumber); //passing by the phone number
      serverSocket.writeln(name); //          and the name.
      serverSocket.writeln(password); //          and the password.
      serverSocket.writeln(foodCategory); //          and the food category.

      print('information are sent.');
      setState(() {});
    });
  }
}
