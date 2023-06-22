import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_app/favourites/fav_controller.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  final _controller = Get.put(FavController());
//
  // List<String> fruitList = [
  //   'Apple',
  //   'Mango',
  //   'Grapes',
  //   'Banana',
  //   'Litchi',
  //   'Orange',
  // ];

//
  // List<String> topFruitList = [];

//
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          'Favourite Screen',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: _controller.fruitList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                if (_controller.topFruitList
                    .contains(_controller.fruitList[index].toString())) {
                  _controller
                      .removeFav(_controller.fruitList[index].toString());
                } else {
                  _controller
                      .removeFav(_controller.fruitList[index].toString());
                }
              },
              title: Text(
                _controller.fruitList[index].toString(),
              ),
              trailing: Icon(
                Icons.favorite_outline,
                color: _controller.topFruitList
                        .contains(_controller.fruitList[index].toString())
                    ? Colors.red
                    : Colors.grey,
              ),
            ),
          );
        },
      ),
    );
  }
}
