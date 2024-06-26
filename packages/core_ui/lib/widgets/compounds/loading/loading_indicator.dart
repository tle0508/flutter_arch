import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loading_indicator/loading_indicator.dart';

class Loading extends StatelessWidget {

  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
 
    return const Center(
        child: SizedBox(
            width: 200,
            height: 200,
            child: LoadingIndicator(
              indicatorType: Indicator.pacman,
              colors: [
                Color.fromARGB(255, 158, 0, 166),
                 Color.fromARGB(255, 255, 0, 251),
                  Color.fromARGB(255, 165, 0, 113),
              ],
            )
        )
    );
  }

}