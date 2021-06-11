import 'package:restaurant_app/objects/FoodArray.dart';
import 'package:restaurant_app/objects/FoodInCart.dart';
import 'Food.dart';

class Order {
  Order({this.foods, this.user});

  List<FoodInCart> foods;
  String user = '';
  bool isDelivered = false;
  int price;
  int code;
  String date = 'this is the date';

  // DateTime date = DateTime.now();
}
