import 'package:educare/config.dart';
import 'package:educare/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'major_pages/home.dart';
import 'minor_pages/login.dart';
import 'minor_pages/signup.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return GetMaterialApp(
      title: 'Educare',
      debugShowCheckedModeBanner: false,
      initialRoute: "/", // Define your initial route here
      getPages: [
        GetPage(name: "/", page: () => Home()) // first page is home
      ],
      theme: ThemeData(
        primarySwatch: educareMaterialYellow,
      ),
    );    
  }
}

