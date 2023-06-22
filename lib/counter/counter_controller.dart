import 'package:get/get.dart';

class CounterController extends GetxController {
//getx controller bata aako
// RxInt

//obs ==  observeable
  RxInt counter = 0.obs;

//
  incrementCounter() {
    counter.value++;
  }
}
