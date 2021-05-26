import 'package:flutter/material.dart';
import 'package:restaurant_app/components/CurrentOrders_ListView.dart';
import 'package:restaurant_app/constants.dart';
import 'package:restaurant_app/objects/Order.dart';
import 'package:restaurant_app/objects/Food.dart';

class CurrentOrdersScreen extends StatefulWidget {
  static String id = 'current_orders_screen';

  @override
  _CurrentOrdersScreenState createState() => _CurrentOrdersScreenState();
}

class _CurrentOrdersScreenState extends State<CurrentOrdersScreen> {
  List<Order> orders = <Order>[
    Order(
      foods: [
        new Food(
          name: 'food1',
          price: '1000',
          details: 'Details1 -_-',
          isAvailable: true,
        ),
        new Food(
            name: 'food2',
            price: '2000',
            details: 'Details2 -_-',
            isAvailable: true),
        new Food(
            name: 'food3',
            price: '3000',
            details: 'Details3 -_-',
            isAvailable: true),
        new Food(
            name: 'food4',
            price: '4000',
            details: 'Detail4 -_-',
            isAvailable: true),
      ],
      user: 'Saeid 1',
      numberOfFood: [1, 2, 3, 4],
    ),
    Order(
      foods: [
        new Food(
            name: 'food1',
            price: '1000',
            details: 'Details1 -_-',
            isAvailable: true),
        new Food(
            name: 'food2',
            price: '2000',
            details: 'Details2 -_-',
            isAvailable: true),
        new Food(
            name: 'food3',
            price: '3000',
            details: 'Details3 -_-',
            isAvailable: true),
        new Food(
            name: 'food4',
            price: '4000',
            details: 'Detail4 -_-',
            isAvailable: true),
      ],
      user: 'Saeid 2',
      numberOfFood: [5, 6, 7, 8],

    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kMainColor,
          title: Text(
            'this is current orders screen',
            style: kAppBarTextStyle,
          ),
        ),
        body: Container(
          child: CurrentOrdersListView(orders: orders),
        ));
  }
}
