import 'package:flutter/material.dart';
import 'package:restaurant_app/components/TotalOrders_ListView.dart';
import 'package:restaurant_app/constants.dart';
import 'package:restaurant_app/objects/Order.dart';
import 'package:restaurant_app/objects/FoodInCart.dart';
import 'package:restaurant_app/objects/Food.dart';

class TotalOrdersScreen extends StatefulWidget {
  static String id = 'total_orders_screen';

  TotalOrdersScreen({this.orders});
  List<Order> orders;

  @override
  _TotalOrdersScreenState createState() => _TotalOrdersScreenState(orders: orders);
}

class _TotalOrdersScreenState extends State<TotalOrdersScreen> {

  _TotalOrdersScreenState({this.orders});
  List<Order> orders;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: Text(
          'Total Orders',
          style: kAppBarTextStyle,
        ),
      ),
      body: Container(
        child: TotalOrdersListView(
          orders: orders,
        ),
      ),
    );
  }
}
