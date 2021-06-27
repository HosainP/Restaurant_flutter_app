import 'package:flutter/cupertino.dart';

class Comment {
  Comment(
      {@required this.sender,
      @required this.comment,
      @required this.rate,
      this.answer,
      this.isChecked});

  String sender;
  String comment;
  String answer = '';
  bool isChecked = false;
  double rate;
}
