import 'dart:convert';

import 'package:e_cart/constatnts/color/colors.dart';
import 'package:e_cart/presentation/Screens/productdetails/carasol.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constatnts/textstyle/textstyle.dart';

class ProductDetailsPage extends StatelessWidget {
  ProductDetailsPage({Key? key}) : super(key: key);
  String myStringWithLinebreaks =
      "15.4 cm (6.1), Super Retina XDR OLED Display\n4GB RAM, 128GB ROM | iOS 15\nApple A15 Bionic Chip Processor\nR: 12MP + 12MP | F: 12MP\nBuilt-in Rechargeable Lithium‑ion Battery\nFace ID | Barometer | Three‑axis Gyro Accelerometer\nProximity Sensor Ambient Light Sensor";

  @override
  Widget build(BuildContext context) {
    final wsize = MediaQuery.of(context).size.width;
    final hsize = MediaQuery.of(context).size.height;
    final ksizedbox = SizedBox(
      height: hsize * .03,
    );
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: hsize * .35,
                  width: double.infinity,
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                  ),
                ),
                CarouselProduct()
              ],
            ),
            Divider(),
            SizedBox(
              height: 13,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 39),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "iPhone 13 \n512GB Green",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.koHo(
                        textStyle: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.w600)),
                  ),
                  Text("₹72,950",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.inder(
                          textStyle: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w900)))
                ],
              ),
            ),
            Divider(
              color: Colors.black,
            ),
        
            Text(""),
            SizedBox(
              height: 270,
              child: Card(
                child: ListTile(
                    subtitle: Column(
                        children:
                            LineSplitter.split(myStringWithLinebreaks).map((o) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("• "),
                      Expanded(
                        child: Text(
                          o,
                          style: TextStyle(fontSize: 15),
                        ),
                      )
                    ],
                  );
                }).toList())),
              ),
            ),
          ],
        ),
      ),
    );
  }
// }
}
