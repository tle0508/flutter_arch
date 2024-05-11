import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget{

  final String title;
  final Color? color;

  const TextTitle({super.key,required this.title,this.color});

  @override
  Widget build(BuildContext context){
    return Text(
      title,
      style:  TextStyle(
        color: color ?? Color.fromARGB(255, 13, 0, 154),
        fontSize: 24,
        fontWeight: FontWeight.w600,
        fontFamily: 'SedanSC'
      ),
      
    );
  }

}