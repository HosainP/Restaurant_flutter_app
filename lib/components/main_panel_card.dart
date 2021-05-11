import 'package:flutter/material.dart';

class Main_panel_card extends StatefulWidget {
  Main_panel_card(
      {@required this.label,
      // this.image,
      // this.destination
      }); //todo these have to be required.

  final String label;
  // final Image image;
  // final String destination;

  @override
  _Main_panel_cardState createState() =>
      _Main_panel_cardState(label, /*image, destination*/);
}

class _Main_panel_cardState extends State<Main_panel_card> {
  _Main_panel_cardState(this.label,/* this.image, this.destination*/);

  String label;
  // Image image;
  // String destination;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Image.asset('images/hamburger.jpg'),
              Center(
                child: Text(
                  this.label,
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
