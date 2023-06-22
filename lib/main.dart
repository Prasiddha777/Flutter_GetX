import 'package:flutter/material.dart';
import 'package:get_app/counter/counter.dart';
import 'package:get_app/heightwidth_screen.dart';
import 'package:get_app/home_screen.dart';
import 'package:get/get.dart';
import 'package:get_app/localization/language.dart';
import 'package:get_app/localizaton_screen.dart';
import 'package:get_app/mark_favourite/favourite.dart';
import 'package:get_app/navigation_screen.dart';
import 'package:get_app/slider/slider.dart';
import 'package:get_app/theme_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      fallbackLocale: Locale('en', 'US'),
      translations: Languages(),
      locale: Locale('np', 'NP'),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MarkFavouriteScreen(),
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomeScreen(),
        ),
        GetPage(
          name: '/navigationScreen',
          page: () => const NavigationScreen(),
        ),
        GetPage(
          name: '/themeScreen',
          page: () => ThemeScreen(
            name: 'Hy',
          ),
        ),
        GetPage(
          name: '/heightWidthScreen',
          page: () => const HeightWidthScreen(),
        ),
      ],
    );
  }
}
