import 'Restaurant.dart';

class RestaurantArray {
  RestaurantArray({this.restaurants});

  List<Restaurant> restaurants;

  List getRestaurants() {
    return restaurants;
  }

  void addUser(Restaurant restaurant) {
    restaurants.add(restaurant);
  }
}
