import 'package:e_cart/constatnts/color/colors.dart';
import 'package:e_cart/presentation/Screens/productdetails/productdtails.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryPage extends StatelessWidget {
  String appbarTitle;
  CategoryPage({Key? key, required this.appbarTitle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final wsize = MediaQuery.of(context).size.width;
    final hsize = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 218, 234, 241),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              toolbarHeight: hsize * 0.065,
              backgroundColor: appThemecolor,
              floating: true,
              pinned: true,
              snap: false,
              centerTitle: true,
              title: Text(
                appbarTitle,
                style: GoogleFonts.poppins(
                    textStyle:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
              ),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.filter_alt_outlined,
                              color: appThemecolor,
                            ),
                            Text(
                              "Filter",
                              style: TextStyle(color: appThemecolor),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.list_rounded,
                              color: appThemecolor,
                            ),
                            Text(
                              "View",
                              style: TextStyle(color: appThemecolor),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  CardWidget(
                    key: key,
                  ),
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
    "https://m.media-amazon.com/images/I/71018KeTu6L._SX679_.jpg",
    "https://opsg-img-cdn-gl.heytapimg.com/epb/202206/20/r9yRqOx3mIAbaj6N.png?x-amz-process=image/format,webp/quality,Q_80",
    "https://i01.appmifile.com/webfile/globalimg/7/A3B7F706-A8D2-05C2-F098-527EF32B3234.png",
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
          return GestureDetector(
            onTap: () {
              Get.to(ProductDetailsPage());
            },
            child: Stack(
              alignment: AlignmentDirectional.topStart,
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
                    onPressed: () {},
                    icon: Icon(Icons.favorite_outline_outlined))
              ],
            ),
          );
        },
      ),
    );
  }
}
