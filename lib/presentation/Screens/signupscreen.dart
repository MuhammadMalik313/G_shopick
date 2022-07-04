import 'package:e_cart/constatnts/color/colors.dart';
import 'package:e_cart/presentation/Screens/login.dart';
import 'package:e_cart/presentation/textformfield/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constatnts/textstyle/textstyle.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

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
                        onTap: (){
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
                                textInField: "Enter Your Name",
                                iconInfield: Icon(Icons.person)),
                            ksizedbox,
                            Textformfield(
                                textInField: "Enter Your Email",
                                iconInfield: Icon(Icons.email)),
                            ksizedbox,
                            Textformfield(
                              textInField: "Create password",
                              iconInfield: Icon(Icons.lock_rounded),
                            ),
                            ksizedbox,
                            Textformfield(
                                textInField: "Confirm password",
                                iconInfield: Icon(Icons.lock_open)),
                            ksizedbox,
                            ElevatedButton(
                                onPressed: () {
                            
                                },
                                style: ElevatedButton.styleFrom(
                                  // primary: appThemecolor,
                                  elevation: 4,
                                  fixedSize: const Size(330, 45),
                                ),
                                child: Text(
                                  "SIGN UP",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  )),
                                ))
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
