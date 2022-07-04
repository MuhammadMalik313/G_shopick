import 'package:e_cart/constatnts/color/colors.dart';
import 'package:e_cart/constatnts/textstyle/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  int? index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Page',
          style: GoogleFonts.inter(
            textStyle: styleOftext,
          ),
        ),
        centerTitle: true,
        backgroundColor: appThemecolor,
      ),
      body: Center(child: Text("home")),
     
    );
  }


}
