import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DonutPage extends StatefulWidget {
  const DonutPage({super.key});

  @override
  State<DonutPage> createState() => _DonutPageState();
}

class _DonutPageState extends State<DonutPage> {
  List donutOnSale = [
    ['Grape Dounut', '35', Colors.blue, 'images/gape_donut.png'],
    ['Chocolate Donut', '305', Colors.green, 'images/chocolare_donut'],
    ['Strawberry Donut', '25', Colors.purple, 'images/strawberry_donut.png'],
    ['Ice cream', '35', Colors.blue, 'images/gape_donut.png'],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2) , itemBuilder: );
  }
}
