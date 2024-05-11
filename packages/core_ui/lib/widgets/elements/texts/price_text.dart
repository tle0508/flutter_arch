
import 'package:flutter/material.dart';

class PriceText extends StatelessWidget {
  final String price;
  final Color? color;

  const PriceText({super.key, required this.price, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      price,
      style: TextStyle(
        color: color ?? Color.fromARGB(255, 11, 96, 0),
        fontSize: 18,
        fontWeight: FontWeight.w800,
        fontFamily: 'SedanSC'
      ),
    );
  }
}