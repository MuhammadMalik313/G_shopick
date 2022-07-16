import 'package:e_cart/constatnts/color/colors.dart';
import 'package:e_cart/presentation/Screens/bottombar/bottomnavbar.dart';
import 'package:e_cart/presentation/Screens/login.dart';
import 'package:e_cart/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        duration: 1600,
        splash: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            CircleAvatar(
              radius: 35,
              backgroundColor: kWhite,
              child: Icon(
                Icons.shopping_cart_sharp,
                size: 30,
                color: appThemecolor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "G-SHOPICK",
              style: GoogleFonts.balooDa2(
                  textStyle: TextStyle(
                      color: kWhite,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
            )
          ],
        ),
        splashIconSize: 200,
        nextScreen: StreamBuilder(
          stream: Authservice().firebaseAuth.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return BottomNavBarWidgetchange();
            }
            return LoginScreen();
          },
        ),
        splashTransition: SplashTransition.slideTransition,
        backgroundColor: appThemecolor);
  }
}
