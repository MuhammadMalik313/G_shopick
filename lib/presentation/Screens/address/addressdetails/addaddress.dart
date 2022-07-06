import 'package:e_cart/constatnts/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddAddress extends StatelessWidget {
  const AddAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


     final wsize = MediaQuery.of(context).size.width;
    final hsize = MediaQuery.of(context).size.height;
    final ksizedbox = SizedBox(
      height: hsize * .025,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appThemecolor,
        shadowColor: appThemecolor,
      ),
      body: ListView(
        children: [
          ksizedbox,
         Container(
          width: double.infinity,
          height: 30,
                color: Colors.blue.shade100,
                child: Center(
                  child: Text(
                    "Contact Details",
                    style: TextStyle(fontSize: 17),
                  ),
                )),
                SizedBox(height: 5,),

        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
                    AddressField(addressFormLabel: "Full Name",),
                   ksizedbox,

                  AddressField(addressFormLabel: "Phone Number",),
          ],),
        ),
                 ksizedbox,

                    Container(
                        width: double.infinity,
          height: 30,
                      color: Colors.blue.shade100,
                      child: Center(
                        child: Text(
                        "Address",
                        style: TextStyle(fontSize: 17),
                        ),
                      )),
                              SizedBox(height: 5,),

               Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Column(
                  children: [
                     AddressField(addressFormLabel: "Address",),
                   ksizedbox,
                  AddressField(addressFormLabel: "Town/city",),
                    ksizedbox,
                  AddressField(addressFormLabel: "Pincode",),
                    ksizedbox,
                  AddressField(addressFormLabel: "State",),
                  ksizedbox,

                   ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  // primary: appThemecolor,
                  elevation: 4,
                  fixedSize: const Size(400, 45),
                ),
                child: Text(
                  "Save Address",
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
               )
               
        ],
      ),
    );
  }
}

class AddressField extends StatelessWidget {
String addressFormLabel;
  AddressField({
    Key? key,
    required this.addressFormLabel
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        border: OutlineInputBorder(),
        labelText:addressFormLabel,
      ),
    );
  }
}
