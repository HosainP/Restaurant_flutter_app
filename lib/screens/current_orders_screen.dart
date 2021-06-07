import 'package:flutter/material.dart';
import 'package:restaurant_app/components/CurrentOrders_ListView.dart';
import 'package:restaurant_app/constants.dart';
import 'package:restaurant_app/objects/Order.dart';
import 'package:restaurant_app/objects/Food.dart';
import 'package:restaurant_app/objects/FoodInCart.dart';

class CurrentOrdersScreen extends StatefulWidget {
  static String id = 'current_orders_screen';

  @override
  _CurrentOrdersScreenState createState() => _CurrentOrdersScreenState();
}

class _CurrentOrdersScreenState extends State<CurrentOrdersScreen> {
  List<Order> orders = [
    new Order(
      foods: [
        new FoodInCart(
          food: new Food(
            name: 'myFood',
            price: '1000',
            details: 'my details -_-',
            isAvailable: true,
          ),
          count: 352,
        ),
        new FoodInCart(
          food: new Food(
              name: 'food2',
              price: '2000',
              details: 'Details2 -_-',
              isAvailable: true),
          count: 2,
        ),
        new FoodInCart(
          food: new Food(
              name: 'food3',
              price: '2000',
              details: 'Details2 -_-',
              isAvailable: true),
          count: 12,
        ),
        new FoodInCart(
          food: new Food(
              name: 'food4',
              price: '2000',
              details: 'Details2 -_-',
              isAvailable: true),
          count: 54,
        ),
      ],
      user: 'Saeid 1',
    ),
    new Order(
      foods: [
        new FoodInCart(
          food: new Food(
            name: 'food1',
            price: '1000',
            details: 'Details1 -_-',
            isAvailable: true,
          ),
          count: 2,
        ),
        new FoodInCart(
          food: new Food(
              name: 'food2',
              price: '2000',
              details: 'Details2 -_-',
              isAvailable: true),
          count: 5,
        ),
        new FoodInCart(
          food: new Food(
              name: 'food3',
              price: '2000',
              details: 'Details2 -_-',
              isAvailable: true),
          count: 8,
        ),
        new FoodInCart(
          food: new Food(
              name: 'food4',
              price: '2000',
              details: 'Details2 -_-',
              isAvailable: true),
          count: 65,
        ),
      ],
      user: 'Saeid 2',
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
