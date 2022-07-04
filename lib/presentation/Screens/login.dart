import 'package:e_cart/constatnts/color/colors.dart';
import 'package:e_cart/presentation/Screens/bottombar/bottomnavbar.dart';
import 'package:e_cart/presentation/Screens/bottombar/homescreen.dart';
import 'package:e_cart/presentation/textformfield/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constatnts/textstyle/textstyle.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wsize = MediaQuery.of(context).size.width;
    final hsize = MediaQuery.of(context).size.height;
    final ksizedbox = SizedBox(
      height: hsize * .03,
    );
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: hsize * .35,
                width: double.infinity,
                decoration: BoxDecoration(color: appThemecolor),
                child: Padding(
                  padding: const EdgeInsets.only(top: 85),
                  child: Text(
                    "Welcome",
                    style: GoogleFonts.inter(textStyle: signuptext),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 150, bottom: 100, left: 20, right: 20),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kWhite,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: hsize * 0.03,
                      ),
                      Text("Login",
                          style: GoogleFonts.inter(textStyle: logintext)),
                      SizedBox(
                        height: hsize * 0.01,
                      ),
                      RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                            text: "Don't have an account?",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        TextSpan(
                            text: '  Sign Up ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red)),
                      ])),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: hsize * .05,
                            ),
                            Textformfield(
                                textInField: "Enter Your Email",
                                iconInfield: const Icon(Icons.email)),
                            ksizedbox,
                            Textformfield(
                                textInField: "Enter Your password",
                                iconInfield: const Icon(Icons.lock)),
                            ksizedbox,
                            ElevatedButton(
                              onPressed: () {
                                Get.to(BottomNavBarWidgetchange());
                              },
                              style: ElevatedButton.styleFrom(
                                // primary: appThemecolor,
                                elevation: 4,
                                fixedSize: const Size(330, 45),
                              ),
                              child: Text(
                                "LOGIN",
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: hsize * .01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Expanded(
                                  child: Divider(
                                    endIndent: 10,
                                    thickness: 1,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "or",
                                  style: TextStyle(fontSize: 18),
                                ),
                                Expanded(
                                  child: Divider(
                                    indent: 10,
                                    thickness: 1,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: hsize * .01,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                side: BorderSide(
                                    width: 1.0, color: appThemecolor),
                                primary: Colors.white,
                                elevation: 4,
                                fixedSize: const Size(330, 45),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    "assets/google.png",
                                    height: hsize * .035,
                                  ),
                                  Text(
                                    "Login with google",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: appThemecolor),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
