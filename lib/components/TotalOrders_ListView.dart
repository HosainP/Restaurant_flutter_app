import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/objects/Order.dart';
import 'package:restaurant_app/constants.dart';
import 'package:restaurant_app/components/Cart_ListView.dart';

class TotalOrdersListView extends StatefulWidget {
  TotalOrdersListView({this.orders});

  List<Order> orders;

  @override
  _TotalOrdersListViewState createState() =>
      _TotalOrdersListViewState(orders: orders);
}

class _TotalOrdersListViewState extends State<TotalOrdersListView> {
  _TotalOrdersListViewState({this.orders});

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 35.0,
                        backgroundImage: AssetImage(orders[index].image),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 0),
                        child: Text(
                          orders[index].user,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                            fontFamily: 'Ubuntu',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'date: ' + orders[index].date,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Ubuntu',
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'tracking code: ' + orders[index].trackingCode.toString(),
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Ubuntu',
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'price: ' + orders[index].price.toString(),
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Ubuntu',
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          orders[index].isDelivered
                              ? Icons.check_circle
                              : Icons.cancel,
                          color: orders[index].isDelivered
                              ? Colors.green
                              : Colors.red,
                        ),
                        Text(
                          orders[index].isDelivered
                              ? 'Delivered'
                              : 'Not delivered yet',
                          style: TextStyle(
                            color: orders[index].isDelivered
                                ? Colors.green
                                : Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
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
