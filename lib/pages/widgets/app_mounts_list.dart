import 'package:flutter/material.dart';
import 'package:mountainapp/data/models/mount.dart';
import 'package:mountainapp/utility/constants.dart' as constants;

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