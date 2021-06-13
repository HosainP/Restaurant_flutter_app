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
  var _formKey = GlobalKey<FormState>();

  TextEditingController foodNameController;
  TextEditingController foodDetailsController;
  TextEditingController foodPriceController;

  Food food = new Food(name: 'unknown', details: 'unknown', price: '0000');

  @override
  void initState() {
    foodNameController = TextEditingController();
    foodDetailsController = TextEditingController();
    foodPriceController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    foodNameController.dispose();
    foodDetailsController.dispose();
    foodPriceController.dispose();
    super.dispose();
  }

  List<Food> foods = <Food>[
    Food(
        name: 'Kebab1',
        details: 'details of the food',
        price: '100000',
        isAvailable: true,
        image: 'images/kebab.jpg'),
    Food(
        name: 'Kebab2',
        details: 'details of the food',
        price: '200000',
        isAvailable: true,
        image: 'images/kebab.jpg'),
    Food(
        name: 'Kebab3',
        details: 'details of the food',
        price: '300000',
        isAvailable: true,
        image: 'images/kebab.jpg'),
    Food(
        name: 'Kebab4',
        details: 'details of the food',
        price: '400000',
        isAvailable: true,
        image: 'images/kebab.jpg'),
    Food(
        name: 'Kebab5',
        details: 'details of the food',
        price: '500000',
        isAvailable: true,
        image: 'images/kebab.jpg'),
    Food(
        name: 'Kebab6',
        details: 'details of the food',
        price: '600000',
        isAvailable: true,
        image: 'images/kebab.jpg'),
    Food(
        name: 'Kebab7',
        details: 'details of the food',
        price: '700000',
        isAvailable: true,
        image: 'images/kebab.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Text(
                      'this is the menu',
                      style: kAppBarTextStyle,
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'add food',
                        style: kAppBarTextStyle,
                      ),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Form(
                                key: _formKey,
                                child: Container(
                                  padding: const EdgeInsets.all(25.0),
                                  alignment: Alignment.center,
                                  child: ListView(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 13.0),
                                            child: CircleAvatar(
                                              backgroundImage: AssetImage('images/kebab.jpg'),
                                              radius: 40.0,
                                            ),
                                          ),
                                        ],
                                        mainAxisAlignment: MainAxisAlignment.center,
                                      ),
                                      TextFormField(
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'food name can not be empty';
                                          }
                                          return null;
                                        },
                                        controller: foodNameController,
                                        // initialValue: food.name,
                                        decoration: InputDecoration(
                                          labelText: 'Name',
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      TextFormField(
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'food details can not be empty';
                                          }
                                          return null;
                                        },
                                        controller: foodDetailsController,
                                        // initialValue: food.details,
                                        decoration: InputDecoration(
                                          labelText: 'Details',
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      TextFormField(
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'food price can not be empty';
                                          }
                                          return null;
                                        },
                                        controller: foodPriceController,
                                        // initialValue: food.price,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          labelText: 'Price',
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          if (_formKey.currentState
                                              .validate()) {
                                            setState(
                                              () {
                                                // food.name = foodNameController.text;
                                                // food.details = foodDetailsController.text;
                                                // food.price = foodPriceController.text;
                                                //TODO creating an object has problems

                                                //TODO the food object is created by now
                                                //TODO All you have to do is to add this food to the array
                                              },
                                            );

                                            foodPriceController.clear();
                                            foodDetailsController.clear();
                                            foodNameController.clear();

                                            Navigator.pop(context);
                                          }
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 20.0,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                            color: kMainColor,
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Add food',
                                              style: TextStyle(
                                                  fontSize: 20.0,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'ubuntu'),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
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
          ),
        ),
      ),
    );
  }
}
