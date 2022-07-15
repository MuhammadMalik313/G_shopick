import 'package:e_cart/constatnts/color/colors.dart';
import 'package:e_cart/controller/signuplogin_controller.dart';
import 'package:e_cart/presentation/Screens/login.dart';
import 'package:e_cart/presentation/textformfield/textformfield.dart';
import 'package:e_cart/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constatnts/textstyle/textstyle.dart';
import 'bottombar/bottomnavbar.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

    bool passwordInvisible=true;

  final loadingController = Get.put(SignupLoginController());
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
                    "Sign Up",
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
                      Text("Create an account",
                          style: GoogleFonts.inter(textStyle: logintext)),
                      SizedBox(
                        height: hsize * 0.01,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: ((context) => LoginScreen())));
                        },
                        child: RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                              text: "Already have an account?",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          TextSpan(
                              text: '  Login ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red)),
                        ])),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: hsize * .065,
                            ),
                            Textformfield(
                                fieldControllers: nameController,
                                textInField: "Enter Your Name",
                                iconInfield: Icon(Icons.person)),
                            ksizedbox,
                            Textformfield(
                                fieldControllers: emailController,
                                textInField: "Enter Your Email",
                                iconInfield: Icon(Icons.email)),
                            ksizedbox,
                            Textformfield(
                                 visiblePassword: true,
                              sufixxIconinField: IconButton(onPressed: (){
                                 


                              }, icon: Icon(Icons.visibility_off_sharp)), 
                           
                              fieldControllers: passwordController,
                              textInField: "Create password",
                              iconInfield: IconButton(icon:Icon(Icons.lock),onPressed: (){

                              },),
                            ),
                            ksizedbox,
                            Textformfield(

                                   visiblePassword: true,
                          
                          
            
                                fieldControllers: confirmPasswordController,
                                textInField: "Confirm password",
                                iconInfield: Icon(Icons.lock_open)),
                            ksizedbox,
                            Obx(() {
                                    return ElevatedButton(
                                        onPressed: () async {
                                          loadingController.loading.value =
                                              true;

                                          if (emailController.text.isEmpty ||
                                              passwordController.text.isEmpty) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(SnackBar(
                                              content: Text(
                                                  "All fields are required!!!"),
                                              backgroundColor: Colors.red,
                                            ));
                                          } else if (passwordController.text !=
                                              confirmPasswordController.text) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(SnackBar(
                                              content:
                                                  Text("Passwords don't match"),
                                              backgroundColor: Colors.red,
                                            ));
                                          } else {
                                            User? result = await Authservice()
                                                .register(
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
                                           primary: appThemecolor,
                                          elevation: 4,
                                          fixedSize: const Size(330, 45),
                                        ),
                                        child: loadingController.loading.value
                                            ? Center(
                                                child:
                                                    CircularProgressIndicator(
                                                  strokeWidth: 2,
                                                ),
                                              )
                                            : Text(
                                                "SIGN UP",
                                                style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                              ));
                                  })
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
