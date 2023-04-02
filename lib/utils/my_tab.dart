import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyTabs extends StatelessWidget {
  final String iconPath;

  const MyTabs({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
        child: Image.asset(
          iconPath,
          color: Color.fromARGB(255, 110, 107, 107),
        ),
      ),
    );
  }
}
