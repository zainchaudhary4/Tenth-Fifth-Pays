import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:tenth_fifth_pays/View/Utils/colors.dart';
import 'View/Splash Screen/splash_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Tenth Fifth Pays',
      debugShowCheckedModeBanner: false,
      navigatorObservers: [Get.put<RouteObserver>(RouteObserver<PageRoute>())],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppPrimaryColor.primaryColor),
        useMaterial3: true,
      ),
      home:  SplashScreen(),
    );
  }
}


