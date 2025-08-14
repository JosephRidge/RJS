import 'package:flutter/material.dart';
import 'package:mountainapp/data/models/category.dart';
import 'package:mountainapp/utility/constants.dart' as constants;

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
                return constants.categoryCard(
                  currentCategory.icon!, 
                  currentCategory.category!
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
