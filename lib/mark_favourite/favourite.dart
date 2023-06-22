import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_app/mark_favourite/favourite_cont.dart';

class MarkFavouriteScreen extends StatefulWidget {
  const MarkFavouriteScreen({super.key});

  @override
  State<MarkFavouriteScreen> createState() => _MarkFavouriteScreenState();
}

class _MarkFavouriteScreenState extends State<MarkFavouriteScreen> {
  // bool notification = false;

  //setting up the dependency
  FavouriteController _controller = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mark Favourite Screen'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Notifications'),
              Obx(
                () => Switch(
                  value: _controller.notificationMarker.value,
                  onChanged: (value) {
                    _controller.updatingMarker(value);
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
