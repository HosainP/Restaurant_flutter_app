import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/objects/FoodInCart.dart';
import 'package:restaurant_app/objects/Order.dart';
import 'package:restaurant_app/objects/Food.dart';

class CartListView extends StatefulWidget {
  CartListView({this.foods, this.numberOfFood});

  List<Food> foods;
  List<int> numberOfFood;

  @override
  _CartListViewState createState() => _CartListViewState(foods: foods, numberOfFood: numberOfFood);
}

class _CartListViewState extends State<CartListView> {

  _CartListViewState({this.foods, this.numberOfFood});

  List<Food> foods;
  List<int> numberOfFood;

  // void foodListProvider(Order order) {
  //   for (int i = 0; i < order.foods.length; i++) {
  //     foods[i].food = order.foods[i];
  //     foods[i].count = order.numberOfFood[i];
  //   }
  // }

  @override
  Widget build(BuildContext context) {

    // foodListProvider(order);

    return ListView.builder(
        itemCount: foods.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Row(
              children: [
                Text(
                  foods[index].name,
                ),
                Text(
                  numberOfFood[index].toString(),
                ),
              ],
            ),
          );
        });
  }
}
