import 'package:e_cart/constatnts/color/colors.dart';
import 'package:e_cart/presentation/Screens/bottombar/orders_screen.dart';
import 'package:e_cart/presentation/Screens/bottombar/widgets/homeavatar.dart';
import 'package:e_cart/presentation/Screens/cart/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  int? index;
  @override
  Widget build(BuildContext context) {
    final wsize = MediaQuery.of(context).size.width;
    final hsize = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 218, 234, 241),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              actions: [
                IconButton(
                    onPressed: () {
                      Get.to(() => CartScreen());
                    },
                    icon: Icon(Icons.shopping_cart)),
                // leading:
              ],
              // leading: IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
              automaticallyImplyLeading: false,
              toolbarHeight: hsize * 0.035,
              backgroundColor: appThemecolor,
              floating: true,
              pinned: true,
              snap: false,
              centerTitle: false,
              title: const Text("G-Shopick"),
              bottom: AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: appThemecolor,
                title: Container(
                  width: double.infinity,
                  height: 40,
                  color: kWhite,
                  child: const Center(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search", prefixIcon: Icon(Icons.search)),
                    ),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    // color: Colors.green,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    height: hsize * .1,
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return SampleAvatar(index: index);
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 30,
                        );
                      },
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  Container(
                    //  color: Colors.red,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    height: hsize * .0999,
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return SampleAvatarTwo(index: index);
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 30,
                        );
                      },
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  CarouselDemo(),
                  CardWidget(
                    key: key,
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

class CardWidget extends StatelessWidget {
  CardWidget({Key? key}) : super(key: key);

  List<String> images = [
    "https://images.officeworks.com.au/api/2/img///s3-ap-southeast-2.amazonaws.com/wc-prod-pim/Category_400x400/13procattile_2022.jpg/resize?size=300&auth=MjA5OTcwODkwMg__",
    "https://chamacomputers.lk/api/img/products/product_2156_1.png",
    "https://rukminim1.flixcart.com/image/832/832/kingqkw0-0/speaker/mobile-tablet-speaker/s/8/i/stone-350-boat-original-imafyebfuaumdezs.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/612/612/krayqa80/headphone/x/9/r/rma2010-realme-original-imag54ey5mxggzcy.jpeg?q=70",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  ];

  List<String> homeProductdetails = [
    "Apple iPhone 13 pro max \ Graphite 512GB 5G",
    "boAt Stone 350 10 W\n Speaker  (Black)",
    "Apple iPhone 13 pro max\ Graphite 512GB 5G",
    "Apple iPhone 13 pro max\ Graphite 512GB 5G",
    "Apple iPhone 13 pro max\ Graphite 512GB 5G",
    "Apple iPhone 13 pro max\ Graphite 512GB 5G",
    "Apple iPhone 13 pro max\  Graphite 512GB 5G",
    "Apple iPhone 13 pro max\  Graphite 512GB 5G",
  ];
  List<String> homeProductPrice = [
    "₹139,900.00",
    "₹43,999",
    "₹5499",
    "₹759",
    "₹59,345",
    "₹60,000",
    "₹15,999",
    "₹60,380"
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        itemCount: images.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 50 / 80),
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 130,
                        child: Center(
                          child: Image.network(
                            images[index],
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      homeProductdetails[index],
                      textAlign: TextAlign.center,
                      style: GoogleFonts.manrope(
                          textStyle:
                              TextStyle(fontSize: 11, color: appThemecolor)),
                    ),
                    Text(homeProductPrice[index],
                        textAlign: TextAlign.center,
                        style: GoogleFonts.aBeeZee(
                            textStyle: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)))
                  ],
                ),
              ),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.favorite_outline_outlined))
            ],
          );
        },
      ),
    );
  }
}
