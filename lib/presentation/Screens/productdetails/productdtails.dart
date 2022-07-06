import 'dart:convert';

import 'package:e_cart/constatnts/color/colors.dart';
import 'package:e_cart/presentation/Screens/address/addressdetails/addressdetailspage.dart';
import 'package:e_cart/presentation/Screens/productdetails/carasol.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

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
        // backgroundColor: Color.fromARGB(255, 152, 184, 210),
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
                      "iPhone 13 512GB Green",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.koHo(
                          textStyle: TextStyle(
                              fontSize: 25,
                              color: appThemecolor,
                              fontWeight: FontWeight.w900)),
                    ),
                    Text("₹72,950",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.inder(
                            textStyle: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w900)))
                  ],
                ),
              ),
              Divider(
                indent: 10,
                endIndent: 10,
                thickness: 2,
                // color: Colors.black,
              ),
              Container(
                  color: Colors.blue.shade100,
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Text(
                      "    Key features",
                      style: TextStyle(fontSize: 17),
                    ),
                  )),
              SizedBox(
                height: 270,
                child: Card(
                  color: Color.fromARGB(255, 254, 254, 254),
                  child: ListTile(
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                            children: LineSplitter.split(myStringWithLinebreaks)
                                .map((o) {
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("• ",
                                  style: TextStyle(fontSize: 15, height: 1.5)),
                              Expanded(
                                child: Text(
                                  o,
                                  style: TextStyle(fontSize: 15, height: 1.5),
                                ),
                              )
                            ],
                          );
                        }).toList()),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 30,
                          decoration: BoxDecoration(
                              color: appThemecolor,
                              borderRadius: BorderRadius.circular(5)),
                          // color: Colors.grey,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: DropdownButton(
                                iconEnabledColor: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                hint: Text(
                                  "Qty",
                                  style: TextStyle(color: Colors.white),
                                ),
                                items: [
                                  DropdownMenuItem(
                                    child: Text("1"),
                                    value: 1,
                                  ),
                                  DropdownMenuItem(
                                    child: Text("2"),
                                    value: 2,
                                  )
                                ],
                                onChanged: (value) {}),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        //  floatingActionButton: FloatingActionButton.extended(
        //         onPressed: () {},
        //         isExtended: true,
        //         materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        //         label: Text('Fixed Button'),
        //       ),
        //       floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        bottomNavigationBar: Container(
          // margin: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
          // color: Colors.red,
          // height: 50,
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: appThemecolor, width: 1)),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Padding(
              //   padding: const EdgeInsets.only(left: 40),
              //   child: Text("₹72,950",
              //       textAlign: TextAlign.center,
              //       style: GoogleFonts.inder(
              //           textStyle: TextStyle(
              //               fontSize: 28, fontWeight: FontWeight.w900))),
              // ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Add to Cart",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  // primary: appThemecolor,
                  elevation: 4,
                  fixedSize: const Size(170, 52.9),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => AddressDetailsPage());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.shopping_bag_rounded),
                    Text(
                      "Buy now",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  // primary: appThemecolor,
                  shape: RoundedRectangleBorder(),
                  elevation: 4,
                  fixedSize: const Size(190, 50),
                ),
              )
            ],
          ),
        ));
  }
}
