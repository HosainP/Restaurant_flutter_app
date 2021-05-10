class Food {
  Food(this._name, this._details, this._price);

  String _name;
  String _details;
  int _price;

  void setName(String name) {
    this._name = name;
  }

  void setDetails(String details) {
    this._details = details;
  }

  void setPrice(int price) {
    this._price = price;
  }

  String getName() {
    return this._name;
  }

  String getDetails() {
    return this._details;
  }

  int getPrice() {
    return this._price;
  }
}
