// ignore_for_file: prefer_const_constructors

import 'package:donutapp/pages/tabview/burger_page.dart';
import 'package:donutapp/pages/tabview/donut_page.dart';
import 'package:donutapp/utils/my_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    MyTabs(iconPath: 'assets/icons/burger.png'),
    MyTabs(iconPath: 'assets/icons/donut.png'),
    MyTabs(iconPath: 'assets/icons/pancakes.png'),
    MyTabs(iconPath: 'assets/icons/pizza.png'),
    MyTabs(iconPath: 'assets/icons/smoothie.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              size: 30,
              color: Colors.black,
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                Icons.person,
                size: 30,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Text(
                    'I want to ',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: Text(
                    'Eat',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // tabs here
            TabBar(tabs: myTabs),

            Expanded(
                child: TabBarView(children: const [
              DonutPage(),
              BurgerPage(),
              BurgerPage(),
              BurgerPage(),
              BurgerPage(),
            ]))
          ],
        ),
      ),
    );
  }
}
