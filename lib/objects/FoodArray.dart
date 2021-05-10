import 'Food.dart';

class FoodArray {
  FoodArray(this._foods);

  List<Food> _foods;

  List getFoods() {
    return _foods;
  }

  void addFood(Food food) {
    _foods.add(food);
  }
}
