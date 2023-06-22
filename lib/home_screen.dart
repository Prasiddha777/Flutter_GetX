import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello Get'),
      ),
      body: Column(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            'Prasid',
            'Hello from top of the world',
            backgroundColor: Colors.red,
            snackPosition: SnackPosition.TOP,
          );
          // ScaffoldMessenger(child: Text('data'));
        },
      ),
    );
  }
}
