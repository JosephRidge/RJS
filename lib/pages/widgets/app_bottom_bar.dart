
import 'package:flutter/material.dart';
import 'package:mountainapp/data/models/app_bottom_bar_item.dart';
import 'package:mountainapp/utility/constants.dart' as constants;

class AppBottomBar extends StatefulWidget {
  const AppBottomBar({super.key});

  @override
  State<AppBottomBar> createState() => _AppBottomBarState();
}

class _AppBottomBarState extends State<AppBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset.zero,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(constants.barItems.length, (index) {
          AppBottomBarItem currentBarItem =constants.barItems[index];
          Widget barItemWidget;

          if (currentBarItem.isSelected) {
            barItemWidget = Container(
              padding: EdgeInsets.only(left: 15, top: 5, bottom: 5, right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:  constants.mainColor,
              ),
              child: Row(
                children: [
                  Icon(currentBarItem.icon, color: Colors.white),
                  SizedBox(width: 5),
                  Text(
                    currentBarItem.label,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            );
          } else {
            barItemWidget = IconButton(
              onPressed: () {
                setState(() {
                  for (var item in constants.barItems) {
                    item.isSelected = item == currentBarItem;
                  }
                });
              },
              icon: Icon(currentBarItem.icon),
              color: Colors.grey,
            );
          }
          return barItemWidget;
        }),
      ),
    );
  }
}
