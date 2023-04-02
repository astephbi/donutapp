import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/donut_tile.dart';

class DonutPage extends StatefulWidget {
  const DonutPage({super.key});

  @override
  State<DonutPage> createState() => _DonutPageState();
}

class _DonutPageState extends State<DonutPage> {
  List donutOnSale = [
    ['Grape Dounut', '35', Colors.blue, 'images/grape_donut.png'],
    ['Chocolate Donut', '305', Colors.green, 'images/chocolate_donut'],
    ['Strawberry Donut', '25', Colors.purple, 'images/strawberry_donut.png'],
    ['Ice cream', '35', Colors.pink, 'images/icecream_donut.png'],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.5),
      itemCount: donutOnSale.length,
      itemBuilder: (context, index) => DonutTile(
        donutColor: donutOnSale[index][2],
        donutName: donutOnSale[index][0],
        donutPrice: donutOnSale[index][1],
        imagePath: donutOnSale[index][3],
      ),
    );
  }
}
