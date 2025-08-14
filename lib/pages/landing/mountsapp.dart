import 'package:flutter/material.dart'; 
import 'package:mountainapp/pages/widgets/app_bottom_bar.dart';
import 'package:mountainapp/pages/widgets/app_category_list.dart';
import 'package:mountainapp/pages/widgets/app_header.dart';
import 'package:mountainapp/pages/widgets/app_mounts_list.dart';
import 'package:mountainapp/pages/widgets/app_search.dart';
import 'package:mountainapp/utility/constants.dart' as constants;

class MountsApp extends StatelessWidget {
  const MountsApp({super.key});

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: constants.appBar,
      drawer: constants.drawer,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppHeader(userProfilePic: 'https://avatars.githubusercontent.com/u/5081804?v=4',),
          AppSearch(),
          AppMountListView(),
          AppCategoryList(),
          AppBottomBar(),
        ],
      ),
    );
  }
}
