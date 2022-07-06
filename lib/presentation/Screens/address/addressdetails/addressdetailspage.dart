import 'package:e_cart/constatnts/color/colors.dart';
import 'package:e_cart/constatnts/textstyle/textstyle.dart';
import 'package:e_cart/presentation/Screens/address/addressdetails/addaddress.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'package:google_fonts/google_fonts.dart';

class AddressDetailsPage extends StatelessWidget {
  const AddressDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wsize = MediaQuery.of(context).size.width;
    final hsize = MediaQuery.of(context).size.height;
    final ksizedbox = SizedBox(
      height: hsize * .03,
    );
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 218, 234, 241),
      appBar: AppBar(
        backgroundColor: appThemecolor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(shrinkWrap: true, physics: ScrollPhysics(), children: [
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    "https://images.officeworks.com.au/api/2/img///s3-ap-southeast-2.amazonaws.com/wc-prod-pim/Category_400x400/13procattile_2022.jpg/resize?size=300&auth=MjA5OTcwODkwMg__",
                    height: 90,
                    width: 90,
                  ),
                  SizedBox(
                    width: wsize * .025,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "iPhone 13 512GB Green",
                          style: GoogleFonts.allerta(
                              textStyle: TextStyle(fontSize: 18)),
                        ),
                        SizedBox(
                          height: hsize * .011,
                        ),
                        Text(
                          "₹79,850",
                          style: styleOftextprice,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "1 Item",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Divider(
                thickness: 2,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: ((context, index) {
                  return SizedBox(
                    height: 160,
                    width: double.infinity,
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Carnival Infopark,\nPhase 2,\nKakkanadu,\nPin  : 691304\nkerala,\nIndia,\nPhone number:994767656",
                              style: TextStyle(fontSize: 15),
                            ),
                            Wrap(
                              children: [
                                IconButton(
                                  padding: EdgeInsets.only(bottom: 100),
                                  onPressed: (){}, icon: Icon(Icons.edit),),
                                Icon(
                                Icons.album_outlined,
                                color: appThemecolor,
                              ),]
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
                itemCount: 2,
              ),
              ksizedbox,
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  // primary: appThemecolor,
                  elevation: 4,
                  fixedSize: const Size(330, 45),
                ),
                child: Text(
                  "Deliver to this address",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              ksizedbox,
              ElevatedButton(
                onPressed: () {
                  Get.to(() => AddAddress());
                },
                style: ElevatedButton.styleFrom(
                  // primary: appThemecolor,
                  elevation: 4,
                  fixedSize: const Size(330, 45),
                ),
                child: Text(
                  "Add new address",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              ksizedbox,
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  // primary: appThemecolor,
                  elevation: 4,
                  fixedSize: const Size(330, 45),
                ),
                child: Text(
                  "Use current location",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
