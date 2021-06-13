import 'package:flutter/material.dart';
import 'package:restaurant_app/constants.dart';

class MapScreen extends StatefulWidget {
  static String id = 'map_screen';

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: Text(
            'this is the map'
        ),
      ),
      body: Container(
        child: Center(
           child:  Text(
               'yes this is the map\n-_-',
             textAlign: TextAlign.center,
             style: TextStyle(
               fontSize: 40.0,
               fontWeight: FontWeight.bold,
             ),
           ),
        ),
      ),
    );
  }
}
