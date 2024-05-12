import 'package:flutter/material.dart';

class BigText extends StatelessWidget{

  final String title;
  final Color? color;

  const BigText({super.key,required this.title,this.color});

  @override
  Widget build(BuildContext context){
    return Text(
      title,
      style:  TextStyle(
        color: color ?? Color.fromARGB(255, 255, 255, 255),
        fontSize: 34,
        fontWeight: FontWeight.w800,
        fontFamily: 'Jacquard24'
      ),
      
    );
  }

}