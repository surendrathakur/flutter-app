import 'package:flutter/material.dart';

/*
 * Define initial loading spplash screen
 */

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Introduce a delay of 2 seconds before navigating to the login screen
    Future.delayed(const Duration(seconds: 2), () {
      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(builder: (context) => const LoginScreen()),
      // );
      Navigator.pushNamed(context, '/login');
    });

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Image.asset(
        'assets/images/splash.png',
        width: double.infinity,
        // Other properties like width, height, etc.
      ),
    );
  }
}
