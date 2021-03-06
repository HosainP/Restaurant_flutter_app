import 'package:flutter/material.dart';
import 'package:restaurant_app/components/main_panel_card.dart';
import 'package:restaurant_app/components/reports_panel_card.dart';
import 'package:restaurant_app/constants.dart';
import 'package:restaurant_app/objects/Order.dart';
import 'package:restaurant_app/objects/Food.dart';
import 'package:restaurant_app/objects/FoodInCart.dart';
import 'package:koukicons/archive.dart';
import 'package:koukicons/archive2.dart';
import 'package:koukicons/barChart.dart';
import 'package:restaurant_app/screens/reportsScreens/today_reports_screen.dart';
import 'package:restaurant_app/screens/reportsScreens/total_orders_screen.dart';
import 'package:restaurant_app/screens/reportsScreens/total_reports_screen.dart';

class ReportsMainScreen extends StatelessWidget {
  static String id = 'reports_main_screen';

  List<Order> orders = [
    new Order(
      isDelivered: true,
      trackingCode: 123456789,
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
      isDelivered: true,
      trackingCode: 987654321,
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
              price: '100000',
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
    ),
    new Order(
      trackingCode: 987654321,
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
              price: '100000',
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
      user: 'Saeid 3',
      isDelivered: true,
    ),
    new Order(
      trackingCode: 987654321,
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
              price: '100000',
              details: 'Details2 -_-',
              isAvailable: true),
          count: 8,
        ),
        new FoodInCart(
          food: new Food(
              name: 'food4',
              price: '2700',
              details: 'Details2 -_-',
              isAvailable: true),
          count: 65,
        ),
      ],
      user: 'Saeid 4',
      isDelivered: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: Text(
          'Reports Main Panel',
          style: kAppBarTextStyle,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ReportsPanelCard(
              label: 'Total Orders',
              icon: KoukiconsBarChart(),
              destination: TotalOrdersScreen(
                orders: orders,
              ),
              orders: orders,
            ),
          ),
          Expanded(
            child: ReportsPanelCard(
              label: 'Today Reports',
              icon: KoukiconsArchive2(),
              destination: TodayReportsScreen(
                orders: orders,
              ),
              orders: orders,
            ),
          ),
          Expanded(
            child: ReportsPanelCard(
              label: 'Total Reports',
              icon: KoukiconsArchive(),
              destination: TotalReportsScreen(
                orders: orders,
              ),
              orders: orders,
            ),
          )
        ],
      ),
    );
  }
}
