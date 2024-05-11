import 'package:flutter/material.dart';
import 'package:core_ui/widgets/elements/inputs/search_input.dart';

class HomeNavbar extends StatelessWidget {
  const HomeNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color:Color.fromARGB(255, 255, 255, 255),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: SearchInput()),
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.info_outline_rounded,
                  color: Color.fromARGB(255, 7, 0, 136),
                  size: 40,
                )
            ),
          ],
        ),
      ),
    );
  }

}