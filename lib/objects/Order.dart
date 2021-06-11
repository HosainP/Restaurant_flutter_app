import 'package:restaurant_app/objects/FoodArray.dart';
import 'package:restaurant_app/objects/FoodInCart.dart';
import 'Food.dart';

class Order {
  Order({this.foods, this.user, this.trackingCode, this.isDelivered}) {
    this.price = this.CalculatePrice();
    if (this.isDelivered == null) {
      this.isDelivered = false;
    }
  }

  List<FoodInCart> foods;
  String user = '';
  bool isDelivered = false;
  int price;
  int trackingCode;
  String date = '1400/02/08';
  String image = 'images/saeid.jpg';

  // DateTime date = DateTime.now();

  int CalculatePrice() {
    int price = 0;
    for (int i = 0; i < this.foods.length; i++) {
      price =
          price + ((int.parse(this.foods[i].food.price) * this.foods[i].count));
    }
    return price;
  }
}
