import 'package:flutter/cupertino.dart';
import 'package:restaurant_app/components/AnswerCommentButton.dart';
import 'package:restaurant_app/components/ShowCommentAnswerButton.dart';
import 'package:restaurant_app/constants.dart';
import 'package:restaurant_app/objects/Comment.dart';
import 'package:flutter/material.dart';

class CommentListView extends StatefulWidget {
  CommentListView({this.comments});

  List<Comment> comments;

  @override
  _CommentListViewState createState() =>
      _CommentListViewState(comments: comments);
}

class _CommentListViewState extends State<CommentListView> {
  _CommentListViewState({this.comments});

  List<Comment> comments;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      child: ListView.builder(
          itemCount: comments.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      child: Row(
                        children: [
                          Text(
                            '${comments[index].sender}',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      child: Row(
                        children: [
                          Text(
                            '${comments[index].comment}',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 10.0),
                          padding: EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 30.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(
                                kButtonComponentRadius),
                            color: (comments[index].rate == 5 ||
                                    comments[index].rate == 4)
                                ? Colors.green
                                : (comments[index].rate == 3)
                                    ? Colors.yellow
                                    : Colors.red,
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Rate : ',
                                style: TextStyle(
                                  // color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '${comments[index].rate.toString()}',
                                style: TextStyle(
                                  // color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              comments[index].isChecked =
                                  !comments[index].isChecked;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 10.0),
                            padding: EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 30.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusDirectional.circular(
                                  kButtonComponentRadius),
                              color: Colors.grey.shade300,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  comments[index].isChecked
                                      ? 'checked  '
                                      : 'not checked  ',
                                  style: TextStyle(
                                    color: comments[index].isChecked
                                        ? Colors.green
                                        : Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                  ),
                                ),
                                Icon(
                                  comments[index].isChecked
                                      ? Icons.check_circle
                                      : Icons.remove_circle_outlined,
                                  color: comments[index].isChecked
                                      ? Colors.green
                                      : Colors.red,
                                  size: 17.0,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      child: comments[index].answer == ''
                          ? AnswerCommentButton(comment: comments[index],)
                          : ShowCommentAnswerButton(comment: comments[index]),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
