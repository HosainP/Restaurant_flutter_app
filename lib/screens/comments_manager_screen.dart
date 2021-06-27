import 'package:flutter/material.dart';
import 'package:restaurant_app/components/Comment_ListView.dart';
import 'package:restaurant_app/constants.dart';
import 'package:restaurant_app/objects/Comment.dart';

class CommentsManagerScreen extends StatefulWidget {
  static String id = 'comments_manager_screen';
  List<Comment> comments;
  
  CommentsManagerScreen({this.comments});
  
  @override
  _CommentsManagerScreenState createState() => _CommentsManagerScreenState(comments: comments);
}

class _CommentsManagerScreenState extends State<CommentsManagerScreen> {

  List<Comment> comments;

  _CommentsManagerScreenState({this.comments});
  // = <Comment>[
  //   Comment(comment: 'food is good', answer: '', isChecked: false, rate: 5 , sender: 'Hosain Pishgahi'),
  //   Comment(comment: 'food is not bad', answer: 'this is the answer 2', isChecked: true, rate: 4  , sender: 'Hosain Pishgahi'),
  //   Comment(comment: 'food is not good', answer: 'this is the answer 3', isChecked: false, rate: 3 , sender: 'Hosain Pishgahi'),
  //   Comment(comment: 'food is awesome', answer: 'this is the answer 4', isChecked: true, rate:  2 , sender: 'Hosain Pishgahi'),
  //   Comment(comment: 'food is awful', answer: 'this is the answer 5', isChecked: false, rate: 1 , sender: 'Hosain Pishgahi'),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: Text(
          'this is comments manager screen',
          style: kAppBarTextStyle,
        ),
      ),
      body: Container(
          child: CommentListView(comments: comments,),
      )
    );
  }
}
