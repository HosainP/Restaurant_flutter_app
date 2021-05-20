import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/objects/Food.dart';
import 'package:restaurant_app/constants.dart';

class FoodDetailsScreen extends StatefulWidget {
  static String id = 'food_details_screen';

  FoodDetailsScreen({this.food});

  Food food;

  @override
  _FoodDetailsScreenState createState() => _FoodDetailsScreenState(food: food);
}

class _FoodDetailsScreenState extends State<FoodDetailsScreen> {
  _FoodDetailsScreenState({this.food});

  var _formKey = GlobalKey<FormState>();

  TextEditingController foodNameController;
  TextEditingController foodDetailsController;
  TextEditingController foodPriceController;

  Food food;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: Text(
          'this is the food details screen',
          style: kAppBarTextStyle,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(25.0),
        alignment: Alignment.center,
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.grey.shade300,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.asset(
                    'images/kebab.jpg'), //todo image should be per food
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "${food.name}",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "${food.details}",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "price: ${food.price}",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Form(
                        key: _formKey,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: ListView(
                            children: [
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
                                  // if (_formKey.currentState.validate()) {
                                  setState(() {
                                    if (foodNameController.text != "") {
                                      food.name = foodNameController.text;
                                    }
                                    if (foodDetailsController.text != "") {
                                      food.details = foodDetailsController.text;
                                    }
                                    if (foodPriceController.text != "") {
                                      food.price = foodPriceController.text;
                                    }
                                  });

                                  foodPriceController.clear();
                                  foodDetailsController.clear();
                                  foodNameController.clear();

                                  Navigator.pop(context);
                                  // }
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 20.0,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0),
                                    color: kMainColor,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Submit',
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                decoration: BoxDecoration(
                  color: kMainColor,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Change details',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*

User should be able to change these:

1. price
2. details
3. name
4. picture

 */
