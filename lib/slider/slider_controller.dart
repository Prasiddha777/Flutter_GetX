import 'package:get/get.dart';

class SliderController extends GetxController {
  //setting up the var
  RxDouble sliderVal = 0.0.obs;

  //function to change the val
  sliderChanger(double newVal) {
    sliderVal.value = newVal;
  }
}
