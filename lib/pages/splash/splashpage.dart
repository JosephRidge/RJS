import 'package:flutter/material.dart';
import 'package:mountainapp/pages/landing/mountsapp.dart';
import 'package:mountainapp/utility/constants.dart' as constants;

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (context) => MountsApp()));
    });

    return Container(
      color: constants.mainColor,
      child: Stack(
        children: [
          /**
           * Align: 
           * allow us to positin our
           *  widget in a particular place on the page
           */
          Align(
            // utility widget
            child: Icon(
              // visual widget
              Icons.terrain,
              color: Colors.white,
              size: 90,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 80),
              child: CircularProgressIndicator(
                color: Colors.white,
                // valueColor: AlwaysStoppedAnimation(Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
