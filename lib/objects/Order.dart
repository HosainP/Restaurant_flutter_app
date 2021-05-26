import 'Food.dart';

class Order {

  Order({this.foods, this.user, this.numberOfFood});

  List<Food> foods;
  List<int> numberOfFood;
  String user = '';
  bool isDelivered = false;

}