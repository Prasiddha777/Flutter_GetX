import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_app/slider/slider_controller.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double opacity = 0.5;
  //injecting the dependency
  final SliderController sliderController = Get.put(SliderController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade400,
        title: const Text(
          'Slider Container',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Obx(
            () => Container(
              width: 120,
              height: 80,
              color: Colors.red.withOpacity(sliderController.sliderVal.value),
            ),
          ),
          Obx(() => Slider(
                value: sliderController.sliderVal.value,
                onChanged: (value) {
                  sliderController.sliderChanger(value);
                  // opacity = value;
                },
              ))
        ],
      ),
    );
  }
}
