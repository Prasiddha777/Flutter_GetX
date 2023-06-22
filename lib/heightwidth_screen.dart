import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeightWidthScreen extends StatefulWidget {
  const HeightWidthScreen({super.key});

  @override
  State<HeightWidthScreen> createState() => _HeightWidthScreenState();
}

class _HeightWidthScreenState extends State<HeightWidthScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size * 1;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          'Height and Width Screen',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: Get.height * .15,
            color: Colors.red.shade900,
            child: const Center(
              child: Text('Center'),
            ),
          ),
          Container(
            height: Get.height * .15,
            color: Colors.blue.shade900,
            child: const Center(
              child: Text('Center'),
            ),
          ),
          Container(
            height: Get.height * .15,
            color: Colors.green.shade900,
            child: const Center(
              child: Text('Center'),
            ),
          ),
        ],
      ),
    );
  }
}
