import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/objects/FoodInCart.dart';

class CartListView extends StatefulWidget {
  CartListView({@required this.foods});

  List<FoodInCart> foods;

  @override
  _CartListViewState createState() => _CartListViewState(
        foods: foods,
      );
}

class _CartListViewState extends State<CartListView> {
  _CartListViewState({this.foods});

  List<FoodInCart> foods;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: foods.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3.0),
                      child: Text(
                        (index + 1).toString() +
                            '. ' +
                            foods[index].food.name +
                            '   #' +
                            foods[index].count.toString(),
                        // 5.toString(),
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
