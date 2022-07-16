import 'package:e_cart/constatnts/color/colors.dart';
import 'package:e_cart/presentation/Screens/bottombar/bottomnavbar.dart';
import 'package:e_cart/presentation/Screens/signupscreen.dart';
import 'package:e_cart/presentation/textformfield/textformfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constatnts/textstyle/textstyle.dart';
import '../../controller/googlelogin_controller.dart';
import '../../controller/signuplogin_controller.dart';
import '../../services/auth_service.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);


  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    final wsize = MediaQuery.of(context).size.width;
    final hsize = MediaQuery.of(context).size.height;
    final ksizedbox = SizedBox(
      height: hsize * .03,
    );

    final LoginController controller = Get.put(LoginController());
      final loadingController = Get.put(SignupLoginController());
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
                          text: TextSpan(children: [
                        TextSpan(
                            text: "Don't have an account?",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        TextSpan(
                            text: ' Sign Up ',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.to(SignUpScreen());
                              },
                            style: TextStyle(
                                decoration: TextDecoration.underline,
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
                                fieldControllers: emailController,
                                textInField: "Enter Your Email",
                                iconInfield: const Icon(Icons.email)),
                            ksizedbox,
                            Textformfield(
                                visiblePassword: true,
                                fieldControllers: passwordController,
                                textInField: "Enter Your password",
                                iconInfield: const Icon(Icons.lock)),
                            ksizedbox,
                            loading
                                ? CircularProgressIndicator(
                                    backgroundColor: appThemecolor,
                                  )
                                : ElevatedButton(
                                    onPressed: () async {
                                      loadingController.loading.value =
                                              true;
                                      if (emailController.text == "" ||
                                          passwordController.text == "") {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          content: Text(
                                              "All fields are required!!!"),
                                          backgroundColor: Colors.red,
                                        ));
                                      } else {
                                        User? result = await Authservice()
                                            .login(
                                                emailController.text,
                                                passwordController.text,
                                                context);
                                        if (result != null) {
                                          print("success");
                                          Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                  builder: ((context) =>
                                                      BottomNavBarWidgetchange())),
                                              (route) => false);
                                        }
                                      }
                                   loadingController.loading.value =
                                              false;
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
                             
                      Obx(() =>   loadingController.loading.value
                                            ? Center(
                                                child:
                                                    CircularProgressIndicator(
                                                  strokeWidth: 2,
                                                  color: appThemecolor,
                                                  backgroundColor: Colors.white,
                                                ),
                                              ):   ElevatedButton(
                              onPressed: () {
                                   loadingController.loading.value =
                                              true;
                                controller.loginWithGoogle();
                                  //  loadingController.loading.value =
                                  //             false;
                              },
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
                        )],
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
