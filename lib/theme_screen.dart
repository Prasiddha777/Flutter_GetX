import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class ThemeScreen extends StatefulWidget {
  const ThemeScreen({super.key});

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx Theme Screen"),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const Text('Getx Dailog Alert'),
              subtitle: const Text('Getx  dialog alert with getx'),
              onTap: () {
                Get.defaultDialog(
                    titlePadding: const EdgeInsets.all(12),
                    contentPadding: const EdgeInsets.all(15),
                    title: 'Delete Chat',
                    middleText: 'Are you sure you want to delete this chat?',
                    // textConfirm: 'Yes',
                    textCancel: 'No',
                    confirm: TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text('OK'),
                    ),
                    // textCustom:
                    content: const Column(
                      children: [
                        Text('Hello World'),
                        Text('Hello World'),
                        Text('Hello World'),
                      ],
                    ));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Getx Dailog Alert'),
              subtitle: const Text('Getx  dialog alert with getx'),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    color: Colors.grey.shade300,
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.light_mode),
                          title: const Text('Light Theme'),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.dark_mode),
                          title: const Text('Dark Theme'),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          },
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
