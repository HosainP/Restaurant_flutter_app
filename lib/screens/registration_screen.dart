import 'package:flutter/material.dart';
import 'package:restaurant_app/components/FoodCategoryFormField.dart';
import 'package:restaurant_app/components/MyTextField.dart';
import 'package:restaurant_app/components/NavigatorTextButton.dart';
import 'package:restaurant_app/constants.dart';
import 'package:restaurant_app/screens/main_panel_screen.dart';

class RegistrationScreen extends StatefulWidget {
  static String id = 'registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  TextEditingController nameController;
  TextEditingController foodCategoryController;
  TextEditingController phoneNumberController;
  TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          'this is the registration screen',
          style: kAppBarTextStyle,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
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
              child: MyTextField(
                textEditingController: nameController,
                hintText: 'Enter name of the restaurant',
                labelText: 'name of the restaurant',
                icon: Icon(Icons.restaurant_menu),
                obscure: false,

              )),
          SizedBox(
            height: 20.0,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: MyTextField(
                textEditingController: foodCategoryController,
                hintText: 'Enter the food category of restaurant',
                labelText: 'food category',
                icon: Icon(Icons.fastfood),
                obscure: false,
              )),
          SizedBox(
            height: 20.0,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: MyTextField(
                textEditingController: phoneNumberController,
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
              textEditingController: passwordController,
              hintText: 'Enter your password',
              labelText: 'password',
              icon: Icon(Icons.security),
              obscure: false,
            ),
          ),
          //TODO location field should be added.
          // Padding(
          //   padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          //   child: FoodCategoryFormField(),
          // ), // TODO food category form field.
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 10.0),
            child: NavigatorTextButton(text: 'Register', destination: MainPanel.id),
          ),
        ],
      ),
    );
  }
}
