import 'package:flutter/material.dart';
import 'package:restaurant_app/components/main_panel_card.dart';
import 'package:restaurant_app/constants.dart';
import 'package:restaurant_app/screens/comments_manager_screen.dart';
import 'package:restaurant_app/screens/current_orders_screen.dart';
import 'package:restaurant_app/screens/reports_screen.dart';
import 'package:restaurant_app/screens/restaurant_menu_screen.dart';
import 'package:koukicons/editDoc.dart';
import 'package:koukicons/comments.dart';
import 'package:koukicons/paid.dart';
import 'package:koukicons/archive3.dart';
import 'package:koukicons/mapLocation.dart';

class MainPanel extends StatefulWidget {
  static String id = 'main_panel_screen';

  @override
  _MainPanelState createState() => _MainPanelState();
}

class _MainPanelState extends State<MainPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: Text(
          'Main Panel',
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
                  child: Main_panel_card(
                    label: 'food menu',
                    icon: KoukiconsEditDoc(),
                    destination: RestaurantMenuScreen.id,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: Main_panel_card(
                  label: 'comments section',
                  icon: KoukiconsComments(),
                  destination: CommentsManagerScreen.id,
                )),
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
                  destination: ReportsScreen.id,
                )),
                Expanded(
                    child: Main_panel_card(
                  label: 'delivery district',
                  icon: KoukiconsMapLocation(),
                  // TODO delivery district.
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
