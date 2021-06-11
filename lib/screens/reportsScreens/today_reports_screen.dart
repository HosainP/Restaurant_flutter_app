import 'package:flutter/material.dart';
import 'package:restaurant_app/constants.dart';
import 'package:restaurant_app/objects/Order.dart';

class TodayReportsScreen extends StatefulWidget {
  static String id = 'today_reports_screen';

  TodayReportsScreen({this.orders});

  List<Order> orders;

  @override
  _TodayReportsScreenState createState() =>
      _TodayReportsScreenState(orders: orders);
}

class _TodayReportsScreenState extends State<TodayReportsScreen> {
  _TodayReportsScreenState({this.orders});

  List<Order> orders;

  @override
  Widget build(BuildContext context) {
    Calculator calculator = Calculator();
    int x = calculator.totalPrice(orders);

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: Text(
          'Today Reports',
          style: kAppBarTextStyle,
        ),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background.jpg'), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Today Report',
                        style: TextStyle(
                          fontFamily: 'ubuntu',
                          fontSize: 25.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                        // width: 50.0,
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'number of orders: ' + orders.length.toString(),
                        style: TextStyle(
                          fontFamily: 'ubuntu',
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                        // width: 50.0,
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'total income: ' + x.toString(),
                        style: TextStyle(
                          fontFamily: 'ubuntu',
                          fontSize: 20.0,
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
            ),
          ],
        ),
      ),
    );
  }
}

class Calculator {
  int totalPrice(List<Order> orders) {
    int price = 0;
    for (int i = 0; i < orders.length; i++) {
      price += orders[i].price;
    }
    return price;
  }
}
