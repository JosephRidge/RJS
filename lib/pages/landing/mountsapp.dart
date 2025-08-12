import 'package:flutter/material.dart';
import 'package:mountainapp/main.dart';

class MountsApp extends StatelessWidget {
  const MountsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: mainColor),
        title: Center(child: Icon(Icons.terrain, color: mainColor, size: 40)),
        actions: [SizedBox(width: 40, height: 40)],
      ),
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(30),
          color: mainColor,
          alignment: Alignment.bottomLeft,
          child: Icon(Icons.terrain, color: Colors.white, size: 80),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [AppHeader()],
      ),
    );
  }
}

//  widgets
class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30, top: 30),
      child: Column(
        children: [ 
          ClipOval(
            child: Image(
              image: NetworkImage(
                scale: 5,
                "https://avatars.githubusercontent.com/u/5081804?v=4",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
