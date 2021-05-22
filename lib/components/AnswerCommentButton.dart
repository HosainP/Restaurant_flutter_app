import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/constants.dart';
import 'package:restaurant_app/objects/Comment.dart';

class AnswerCommentButton extends StatefulWidget {
  AnswerCommentButton({this.comment});

  Comment comment;

  @override
  _AnswerCommentButtonState createState() =>
      _AnswerCommentButtonState(comment: comment);
}

class _AnswerCommentButtonState extends State<AnswerCommentButton> {
  _AnswerCommentButtonState({this.comment});

  Comment comment;
  var _formKey = GlobalKey<FormState>();
  TextEditingController AnswerController;

  @override
  void initState() {
    AnswerController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    AnswerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
            title: Text('${comment.comment}'),
            content: Form(
              key: _formKey,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: AnswerController,
                  decoration: InputDecoration(
                    labelText: 'Answer',
                    hintText: 'Answer this comment',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  comment.answer = AnswerController.text;
                  AnswerController.clear();
                  Navigator.pop(context, 'OK');
                },
                child: const Text('OK'),
              ),
            ],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            )),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(kButtonComponentRadius),
              border: Border.all(color: kMainColor, width: 2.0),
            ),
            child: Center(
              //TODO
              child: Text(
                'Answer this',
                style: TextStyle(
                  color: kMainColor,
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
