import 'package:e_cart/controller/account_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constatnts/color/colors.dart';
import '../../../constatnts/textstyle/textstyle.dart';

class AccountScreen extends GetView<AccountController> {
  const AccountScreen({Key? key}) : super(key: key);

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
                height: hsize * .25,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: appThemecolor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Text(
                    "My Profile",
                    style: GoogleFonts.inter(textStyle: signuptext),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120, left: 20, right: 20),
                child: Container(
                  // color: Colors.red,
                  width: double.infinity,
                  child: const CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 74,
                    child: CircleAvatar(
                      radius: 73,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://w7.pngwing.com/pngs/223/244/png-transparent-computer-icons-avatar-user-profile-avatar-heroes-rectangle-black.png"),
                        radius: 71,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text(
            "Muhammad Malik",
            style: GoogleFonts.inder(textStyle: TextStyle(fontSize: 25)),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ProfileWidget(profTitle: "My Account", proficon: Icons.person),
                ProfileWidget(
                    profTitle: "My Address", proficon: Icons.location_on),
                ProfileWidget(
                    profTitle: "My Orders",
                    proficon: Icons.shopping_bag_outlined),
                ProfileWidget(profTitle: "Share App", proficon: Icons.share),
                ProfileWidget(
                    profTitle: "Privacy Policy", proficon: Icons.privacy_tip),
                ProfileWidget(
                    profTitle: "Logout", proficon: Icons.logout_outlined),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  IconData proficon;
  String profTitle;
  ProfileWidget({Key? key, required this.profTitle, required this.proficon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      leading: Icon(
        proficon,
        color: Colors.black,
      ),
      title: Text(
        profTitle,
        style: TextStyle(color: Colors.black, fontSize: 17),
      ),
    );
  }
}
