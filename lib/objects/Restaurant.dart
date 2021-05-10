class Restaurant {
  Restaurant(int phoneNumber, String password) {
    this._phoneNumber = phoneNumber;
    this._password = password;
  }

  int _phoneNumber;
  String _password;

  void setPhoneNumber(int phoneNumber) {
    this._phoneNumber = phoneNumber;
  }

  void setPassword(String password) {
    this._password = password;
  }

  int getPhoneNumber() {
    return this._phoneNumber;
  }

  String getPassword() {
    return this._password;
  }
}
