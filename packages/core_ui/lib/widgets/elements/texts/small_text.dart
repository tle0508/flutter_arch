import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {

  final String title;
  final Color? color;

  const SmallText({super.key, required this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Text(
        title,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(

            fontFamily: 'SedanSC',
            color: color ?? Color.fromARGB(255, 13, 0, 154)
        ),
      ),
    );
  }

}