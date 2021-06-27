import 'dart:io';

import 'package:flutter/material.dart';
import 'package:restaurant_app/components/main_panel_card.dart';
import 'package:restaurant_app/constants.dart';
import 'package:restaurant_app/screens/comments_manager_screen.dart';
import 'package:restaurant_app/screens/current_orders_screen.dart';
import 'package:restaurant_app/screens/map_screen.dart';
import 'package:restaurant_app/screens/reports_main_screen.dart';
import 'package:restaurant_app/screens/restaurant_menu_screen.dart';
import 'package:koukicons/editDoc.dart';
import 'package:koukicons/comments.dart';
import 'package:koukicons/paid.dart';
import 'package:koukicons/archive3.dart';
import 'package:koukicons/mapLocation.dart';

import '../RestaurantInfo.dart';

class MainPanel extends StatefulWidget {
  static String id = 'main_panel_screen';
  RestaurantInfo restaurantInfo;

  MainPanel({this.restaurantInfo});

  @override
  _MainPanelState createState() =>
      _MainPanelState(restaurantInfo: restaurantInfo);
}

class _MainPanelState extends State<MainPanel> {
  RestaurantInfo restaurantInfo;

  _MainPanelState({this.restaurantInfo});

  @override
  Widget build(BuildContext context) {
    String name = 'test';

    Socket.connect('10.0.2.2', 8080).then((serverSocket) {
      serverSocket.listen((socket) {
        name = String.fromCharCodes(socket).trim();
      });
      // serverSocket.close();
    });

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: Text(
          'Main Panel - ${restaurantInfo.name}',
          style: kAppBarTextStyle,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RestaurantMenuScreen(
                            foods: restaurantInfo.foods,
                          ),
                        ),
                      );
                    },
                    child: Main_panel_card(
                      label: 'food menu',
                      icon: KoukiconsEditDoc(),
                      // destination: RestaurantMenuScreen.id,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    child: Main_panel_card(
                      label: 'comments section',
                      icon: KoukiconsComments(),
                      destination: CommentsManagerScreen.id,
                    ),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CommentsManagerScreen(
                            comments: restaurantInfo.comments,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                    child: Main_panel_card(
                  label: 'current orders',
                  icon: KoukiconsPaid(),
                  destination: CurrentOrdersScreen.id,
                )),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: Main_panel_card(
                  label: 'reports',
                  icon: KoukiconsArchive3(),
                  destination: ReportsMainScreen.id,
                )),
                Expanded(
                    child: Main_panel_card(
                  label: 'delivery district',
                  icon: KoukiconsMapLocation(),
                  destination: MapScreen.id,
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
