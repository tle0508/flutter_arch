// ignore_for_file: depend_on_referenced_packages

import 'package:core/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:core_ui/theme/theme_provide.dart';

class BottomNavigation extends ConsumerStatefulWidget {
  final String location;
  final Widget child;

  const BottomNavigation({super.key, required this.child, required this.location});

  @override
  ConsumerState<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends ConsumerState<BottomNavigation> {
  int _currentIndex = 0;

  void onTap(BuildContext context, int index) {
    if(index == _currentIndex) return;

    setState(() {
      _currentIndex = index;
    });

    context.goNamed(routes[index]);
  }

  @override
  Widget build(BuildContext context) {
    final color = ref.watch(appThemeProvider).themeColor;
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: color.backgroundPrimary,
        selectedItemColor: color.selectedItem,
        unselectedItemColor: color.unSelectedItem,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          onTap(context, index);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.shop,), 
          label: 'Shopping'),
          BottomNavigationBarItem(icon: Icon(Icons.people), 
          label: 'User'),
        ],
      ),
    );
  }
}