import 'package:e_cart/constatnts/color/colors.dart';

import 'package:e_cart/presentation/Screens/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: appThemecolor));
    // Get.lazyPut(
    //   () => BottomBarController(),
    // );
    return GetMaterialApp(
      theme: ThemeData(
          primaryColor: appThemecolor,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(appThemecolor)))),
      debugShowCheckedModeBanner: false,
      title: "E-Cart",
      home: SplashScreen(),
    );
  }
}
