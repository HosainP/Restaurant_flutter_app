import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/components/Cart_ListView.dart';
import 'package:restaurant_app/objects/Order.dart';
import 'package:restaurant_app/constants.dart';

class CurrentOrdersListView extends StatefulWidget {
  CurrentOrdersListView({this.orders});

  List<Order> orders;

  @override
  _CurrentOrdersListViewState createState() =>
      _CurrentOrdersListViewState(orders: orders);
}

class _CurrentOrdersListViewState extends State<CurrentOrdersListView> {
  _CurrentOrdersListViewState({this.orders});

  List<Order> orders;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      child: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        orders[index].user,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Center(
                      child: CartListView(
                        foods: orders[index].foods,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      orders[index].isDelivered ? '' : 'Preparing the food...',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 10.0),
                          margin: EdgeInsets.fromLTRB(0, 10.0, 0, 5.0),
                          child: Text(
                            orders[index].isDelivered
                                ? 'food is delivered'
                                : 'is it delivered?',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: orders[index].isDelivered
                                  ? Colors.white
                                  : kMainColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: orders[index].isDelivered
                                ? kMainColor
                                : Colors.white,
                            borderRadius:
                                BorderRadius.circular(kButtonComponentRadius),
                            border: Border.all(color: kMainColor, width: 2.0),
                          ),
                        ),
                        onTap: () => orders[index].isDelivered
                            ? print('it\'s delivered.')
                            : showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: Text(
                                      'is food delivered to the customer?'),
                                  // content: Text('if the food is delivered, press yes.'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context, 'No');
                                      },
                                      child: const Text('No'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        setState(() {
                                          orders[index].isDelivered = true;
                                          orders.removeAt(index);
                                        });
                                        Navigator.pop(context, 'Yes');
                                      },
                                      child: const Text('Yes'),
                                    ),
                                  ],
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                ),
                              ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
