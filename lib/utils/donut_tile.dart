// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DonutTile extends StatelessWidget {
  const DonutTile(
      {super.key,
      required this.donutName,
      required this.imagePath,
      required this.donutPrice,
      this.donutColor});
  final String donutName;
  final String imagePath;
  final String donutPrice;
  final donutColor;
  final double borderRadius = 12;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
            color: donutColor[50],
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: donutColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(borderRadius),
                        bottomRight: Radius.circular(borderRadius)),
                  ),
                  child: const Text(
                    '35',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Image.asset('assets/images/grape_donut.png'),
            ),
          ],
        ),
      ),
    );
  }
}
