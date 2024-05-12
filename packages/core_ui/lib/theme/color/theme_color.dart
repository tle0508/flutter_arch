import 'package:flutter/material.dart';

abstract class IThemeColor {
  late Color backgroundPrimary;
  late Color backgroundSecondary;
  late Color text;
  late Color selectedItem;
  late Color unSelectedItem;
}

class LightTheme implements IThemeColor {
  @override
  Color backgroundPrimary = Colors.white;

  @override
  Color backgroundSecondary = Color.fromARGB(185, 255, 255, 255);

  @override
  Color selectedItem = Color.fromARGB(255, 0, 21, 142);

  @override
  Color text = Color.fromARGB(255, 0, 13, 151);

  @override
  Color unSelectedItem = Color.fromARGB(255, 90, 90, 90);

}

class DarkTheme implements IThemeColor {
  @override
  Color backgroundPrimary = Color.fromARGB(255, 0, 3, 34);

  @override
  Color backgroundSecondary = Color.fromARGB(117, 0, 25, 95);

  @override
  Color selectedItem = const Color.fromARGB(255, 255, 255, 255);

  @override
  Color text = Colors.white;

  @override
  Color unSelectedItem = const Color.fromARGB(255, 84, 84, 84);

}


final lightTheme = LightTheme();
final darkTheme = DarkTheme();