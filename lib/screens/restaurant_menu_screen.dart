import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/constants.dart';
import 'package:restaurant_app/objects/Food.dart';
import 'package:restaurant_app/components/Food_ListView.dart';

class RestaurantMenuScreen extends StatefulWidget {
  static String id = 'restaurant_menu_screen';

  @override
  _RestaurantMenuScreenState createState() => _RestaurantMenuScreenState();
}

class _RestaurantMenuScreenState extends State<RestaurantMenuScreen> {
  List<Food> foods = <Food>[
    Food(name: 'food', details: 'detailsOfFood', price: 123, isAvailable: true),
    Food(name: 'food', details: 'detailsOfFood', price: 123, isAvailable: true),
    Food(name: 'food', details: 'detailsOfFood', price: 123, isAvailable: true),
    Food(name: 'food', details: 'detailsOfFood', price: 123, isAvailable: true),
    Food(name: 'food', details: 'detailsOfFood', price: 123, isAvailable: true),
    Food(name: 'food', details: 'detailsOfFood', price: 123, isAvailable: true),
    Food(name: 'food', details: 'detailsOfFood', price: 123, isAvailable: true),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              title: Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  Text(
                    'this is the menu',
                    style: kAppBarTextStyle,
                  ),
                ],
              ),
              backgroundColor: kMainColor,
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: 'Burgers',
                  ),
                  Tab(
                    text: 'Pizzas',
                  ),
                  Tab(
                    text: 'Sandwiches',
                  ),
                  Tab(
                    text: 'Traditional foods',
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                FoodListView(
                  foods: foods,
                ),
                FoodListView(
                  foods: foods,
                ),
                FoodListView(
                  foods: foods,
                ),
                FoodListView(
                  foods: foods,
                ),
              ],
            )),
      ),
    );
  }
}
