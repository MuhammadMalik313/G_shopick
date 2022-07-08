import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../../constatnts/color/colors.dart';
import '../../../constatnts/textstyle/textstyle.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appThemecolor,
        title: Text("My Cart"),
      ),
      body: ListView.separated(
        itemCount: 2,
        itemBuilder: (context, index) {
          return CartCard();
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 7,
          );
        },
      ),
    );
  }
}

class CartCard extends StatelessWidget {
  const CartCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wsize = MediaQuery.of(context).size.width;
    final hsize = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Slidable(
        endActionPane:  ActionPane(
          // extentRatio: 3,
          motion: ScrollMotion(),
         children: [
          SlidableAction(
            // spacing: 2,
            // An action can be bigger than the others.
            // flex: 1,
            onPressed: (context) {
              return null;
            },
            backgroundColor: Color.fromARGB(255, 250, 107, 82),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          )
        ]),
        child: Card(
          // color:   const Color.fromARGB(255, 218, 234, 241),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  "https://images.officeworks.com.au/api/2/img///s3-ap-southeast-2.amazonaws.com/wc-prod-pim/Category_400x400/13procattile_2022.jpg/resize?size=300&auth=MjA5OTcwODkwMg__",
                  height: 90,
                  width: 90,
                ),
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
                    // Text(
                    //   "+ 1 - ",
                    //   style: TextStyle(color: Colors.black, fontSize: 17),
                    // ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.end,
                    //   // crossAxisAlignment: CrossAxisAlignment.end,
                    //   children: [
                    //   ElevatedButton(

                    //     onPressed: (){}, child: Text("Buy")),
                    //     SizedBox(width: 10,),
                    //      ElevatedButton(onPressed: (){}, child: Text("Delete"))
                    // ],)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
