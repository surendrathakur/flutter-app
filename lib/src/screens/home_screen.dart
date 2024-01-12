/*
 * Define home screen
 */

import 'package:flutter/material.dart';
import 'package:note_taking_app/src/utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.accentColor,
      body: Center(
        child: Text("Home Screen"),
      ),
    );
  }
}
