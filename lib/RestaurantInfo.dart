import 'package:restaurant_app/objects/Comment.dart';
import 'package:restaurant_app/objects/Restaurant.dart';

import 'objects/Food.dart';

class RestaurantInfo {
  // it is singleton

  RestaurantInfo _single_instance = null;

  String s;
  List<String> parts;

  String name;
  String phoneNUmber;
  String password;
  String label;
  String score;
  String address;
  String discountCode;
  List<Food> foods = List<Food>();
  List<Comment> comments = List<Comment>();

  RestaurantInfo(String str) {
    s = str;
    getInfo(s);
    makeObject();
  }

  RestaurantInfo getInstance(String str) {
    if (_single_instance == null) _single_instance = RestaurantInfo(str);

    return _single_instance;
  }

  void getInfo(String s) {
    this.parts = s.split(':::::');
  }

  void makeObject() {
    this.name = parts[1];
    this.phoneNUmber = parts[2];
    this.password = parts[3];
    this.score = parts[4];
    this.label = parts[5];
    this.address = parts[6];
    this.discountCode = parts[7];
    setFoods(parts[8]);
    setComments(parts[9]);
  }

  void setFoods(String foods) {
    List<String> eachFoodDetails = foods.split('::::');
    for (int i = 0; i < eachFoodDetails.length; i++) {
      List<String> thisFood = eachFoodDetails[i].split(':::');
      this.foods.add(
            new Food(
                name: thisFood[0],
                details: thisFood[1],
                label: thisFood[2],
                price: thisFood[3],
                numberOfSales: thisFood[4],
                counter: thisFood[5],
                isAvailable: thisFood[6] == 'true' ? true : false),
          );
    }
  }

  void setComments(String comments) {
    List<String> eachCommentDetails = comments.split('::::');
    for (int i = 0; i < eachCommentDetails.length; i++) {
      List<String> thisComment = eachCommentDetails[i].split(':::');
      this.comments.add(
            new Comment(
                comment: thisComment[0],
                answer: thisComment[1],
                sender: thisComment[2],
                rate: double.parse(thisComment[3]),
                isChecked: (thisComment[4] == 'true' ? true : false)),
          );
    }
  }
}
