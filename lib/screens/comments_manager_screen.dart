import 'package:flutter/material.dart';
import 'package:restaurant_app/constants.dart';

class CommentsManagerScreen extends StatefulWidget {
  static String id = 'comments_manager_screen';
  @override
  _CommentsManagerScreenState createState() => _CommentsManagerScreenState();
}

class _CommentsManagerScreenState extends State<CommentsManagerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          'this is comments manager screen',
          style: kAppBarTextStyle,
        ),
      ),
      body: Center(
        child: Text(
          'this is comments section',
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
      ),
    );
  }
}
