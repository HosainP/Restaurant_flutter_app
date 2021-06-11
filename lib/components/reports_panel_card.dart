import 'package:flutter/material.dart';
import 'package:restaurant_app/objects/Order.dart';

class ReportsPanelCard extends StatelessWidget {
  ReportsPanelCard({@required this.label, this.destination, this.icon, this.orders});

  final String label;
  var icon;
  var destination;
  List<Order> orders;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              icon,
              Center(
                child: Text(
                  this.label,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
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
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
        );
      },
    );
  }
}
