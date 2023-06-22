import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_app/home_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation in Getx'),
      ),
      body: ElevatedButton(
        onPressed: () {
          // Get.to(HomeScreen());
          //goes to themescren
          Get.toNamed('/themeScreen');
        },
        child: const Text('Next Page'),
      ),
    );
  }
}
