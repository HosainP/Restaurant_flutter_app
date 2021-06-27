class Food {

  Food({this.name, this.details, this.price, this.isAvailable, this.image, this.numberOfSales, this.counter, this.label});

  String name;
  String details;
  String price;
  bool isAvailable;
  String image = 'images/kebab.jpg';

  String numberOfSales;
  String counter;
  String label;

  // void setName(String name) {
  //   this._name = name;
  // }
  //
  // void setDetails(String details) {
  //   this._details = details;
  // }
  //
  // void setPrice(int price) {
  //   this._price = price;
  // }
  //
  // String getName() {
  //   return this._name;
  // }
  //
  // String getDetails() {
  //   return this._details;
  // }
  //
  // int getPrice() {
  //   return this._price;
  // }
}
