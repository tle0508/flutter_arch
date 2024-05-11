import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget{
  
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
   return const TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
        suffixIcon: Align(
          widthFactor: 1.0,
          heightFactor: 1.0,
          child: Icon(
            Icons.search,
            color:Color.fromARGB(255, 16, 0, 159),
            ),
        )
      ),
   );
  }

}