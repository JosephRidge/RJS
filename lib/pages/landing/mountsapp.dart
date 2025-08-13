import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mountainapp/data/models/app_bottom_bar_item.dart';
import 'package:mountainapp/main.dart'; 
import 'package:mountainapp/data/models/category.dart';
import 'package:mountainapp/data/models/mount.dart';
import 'package:mountainapp/pages/widgets/app_header.dart';
import 'package:mountainapp/utility/constants.dart' as constants;

class MountsApp extends StatelessWidget {
  const MountsApp({super.key});

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color:  constants.mainColor),
        title: Center(child: Icon(Icons.terrain, color:  constants.mainColor, size: 40)),
        actions: [SizedBox(width: 40, height: 40)],
      ),
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(30),
          color:  constants.mainColor,
          alignment: Alignment.bottomLeft,
          child: Icon(Icons.terrain, color: Colors.white, size: 80),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppHeader(),
          AppSearch(),
          AppMountListView(),
          AppCategoryList(),
          AppBottomBar(),
        ],
      ),
    );
  }
}

class AppSearch extends StatelessWidget {
  const AppSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Discover",
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Colors.grey),
                      SizedBox(width: 10),
                      Text('search', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: constants.mainColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.tune, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AppMountListView extends StatelessWidget {
  const AppMountListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: constants.mountItems.length,
        itemBuilder: (context, index) {
          MountModel currentMount = constants.mountItems[index];
          return Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: NetworkImage(currentMount.path),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  currentMount.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  currentMount.location,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class AppCategoryList extends StatelessWidget {
  const AppCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Category',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'See More',
                  style: TextStyle(
                    color:  constants.mainColor,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            margin: EdgeInsets.only(left: 10),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: constants.categories.length,
              itemBuilder: (context, index) {
                CategoryModel currentCategory = constants.categories[index];
                return Container(
                  width: 100,
                  margin: EdgeInsets.only(top: 10, right: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.2),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(currentCategory.icon, color:  constants.mainColor),
                      Text(
                        currentCategory.category!,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

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
                  constants.barItems.forEach((AppBottomBarItem item) {
                    item.isSelected = item == currentBarItem;
                  });
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
