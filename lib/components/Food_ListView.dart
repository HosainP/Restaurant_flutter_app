import 'package:flutter/material.dart';
import 'package:restaurant_app/components/FoodDetailsButton.dart';
import 'package:restaurant_app/objects/Food.dart';

class FoodListView extends StatefulWidget {

  List<Food> foods;

  FoodListView({this.foods});

  @override
  _FoodListViewState createState() => _FoodListViewState(foods: foods);
}

class _FoodListViewState extends State<FoodListView> {

  List<Food> foods;

  _FoodListViewState({this.foods});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: foods.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey.shade300,
              ),
              height: 170.0,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "${foods[index].name}",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '${foods[index].details}',
                          style: TextStyle(
                              fontSize: 15, color: Colors.grey.shade900),
                        ),
                        Row(
                          children: [
                            foods[index].isAvailable
                                ? Text("Available")
                                : Text("not Available"),
                            Switch(
                                value: foods[index].isAvailable,
                                activeColor: Colors.green,
                                activeTrackColor: Colors.green,
                                inactiveThumbColor: Colors.red,
                                inactiveTrackColor: Colors.redAccent,
                                onChanged: (value) {
                                  setState(() {
                                    foods[index].isAvailable = value;
                                  });
                                }),
                          ],
                        ),
                        FoodDetailsButton(food: foods[index],),
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset('images/kebab.jpg'), //todo image should be per food
                  ),
                ],
              ));
        });
  }
}

// todo if the name was to long, then the image would not be completely in screen.