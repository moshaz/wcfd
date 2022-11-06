import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wcfd/Controllers/home_controller.dart';
import 'package:get/get.dart';
import 'package:wcfd/Views/profile_page.dart';

import 'home_page.dart';
import 'news_page.dart';

class AppNav extends StatefulWidget {
  const AppNav({Key? key}) : super(key: key);

  @override
  State<AppNav> createState() => _AppNavState();
}

class _AppNavState extends State<AppNav> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
            body: SafeArea(
              child:
              IndexedStack(
                index: controller.tabIndex,
                children: [
                  HomePage(),
                  NewsPage(),
                  ProfilePage(),
                ],
              ),// Here your page container will be placed,
            ),
            bottomNavigationBar:
            BottomNavigationBar(
              onTap: controller.changeTabIndex,
              currentIndex: controller.tabIndex,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.sportscourt),
                  label: 'News',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.person),
                  label: 'Account',
                ),
              ],
            )// Your bottom navigation bar widget here,
        );
      },
    );
  }
}




