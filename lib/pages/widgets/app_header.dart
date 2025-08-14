import 'package:mountainapp/utility/constants.dart' as constants;
import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  AppHeader({super.key, required this.userProfilePic});
  String userProfilePic;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30, top: 30),
      child: Row(
        children: [
          ClipOval(
            child: Image.network(
              userProfilePic,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, Roman',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Good morning',
                style: TextStyle(color: constants.mainColor, fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
