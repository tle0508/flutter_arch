// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_super_parameters

import 'package:core_ui/widgets/compounds/navbar/AppBottomNavigationBar.dart';
import 'package:flutter/material.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Text('Profile Page'),
      ),
      bottomNavigationBar: AppBottomNavigationBar( 
        currentIndex: 1, // ตั้งค่า index ให้เป็น 1 สำหรับหน้า Profile
      
      ),
    );
  }
}
