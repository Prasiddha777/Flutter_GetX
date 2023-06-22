import 'package:get/get.dart';

class FavController {
  RxList<String> fruitList = [
    'Apple',
    'Mango',
    'Grapes',
    'Banana',
    'Litchi',
    'Orange',
  ].obs;
  RxList<dynamic> topFruitList = [].obs;

  addFav(String val) {
    fruitList.add(val);
  }

  removeFav(String val) {
    fruitList.remove(val);
  }
}
