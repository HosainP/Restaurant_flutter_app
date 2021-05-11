import 'package:flutter/material.dart';
import 'package:restaurant_app/objects/RestaurantArray.dart';

class NavigatorTextButton extends StatelessWidget {
  NavigatorTextButton(
      {@required this.text,
      @required this.destination,
      this.users,
      });

  final String text;
  final String destination;
  RestaurantArray users;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      constraints: BoxConstraints.tightFor(
        width: 250.0,
        height: 50.0,
      ),
      // shape: CircleBorder(),
      fillColor: Colors.pink,
      onPressed: () {
          Navigator.pushNamed(context, destination);
      },
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
        ),
      ),
    );
  }
}
