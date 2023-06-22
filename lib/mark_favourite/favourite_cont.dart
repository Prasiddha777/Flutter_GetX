import 'package:get/get.dart';

class FavouriteController extends GetxController {
  //var
  RxBool notificationMarker = false.obs;

  //
  updatingMarker(bool val) {
    notificationMarker.value = val;
  }
}
