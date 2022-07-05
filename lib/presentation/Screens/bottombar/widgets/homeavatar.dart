import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_cart/presentation/Screens/ctegorydetails/category.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class SampleAvatar extends StatelessWidget {
  int index;
  SampleAvatar({Key? key, required this.index}) : super(key: key);
  List<IconData> categoryIcon = [
    Icons.phone_android_sharp,
    Icons.laptop_mac_rounded,
    Icons.speaker_outlined,
    Icons.camera_alt_outlined
  ];

  List<String> categoryTitle = ["Mobilephone", "Laptops", "Speakers", "Camera"];


   List<Function()> categoryIconfunction = [
    () {
      Get.to(CategoryPage(appbarTitle:"MobilePhones",));
    }, () {
      Get.to(CategoryPage(appbarTitle: "Laptops",));
    }, () {
      Get.to(CategoryPage(appbarTitle: "Speakers",));
    }, () {
      Get.to(CategoryPage(appbarTitle: "Camera",));
    }, 
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: Color.fromARGB(255, 192, 215, 255),
          child: IconButton(
            onPressed: 
              categoryIconfunction[index],
              
            
            icon: Icon(categoryIcon[index]),
            color: Colors.black,
          ),
          // backgroundImage: NetworkImage(
          //     'https://media-exp1.licdn.com/dms/image/C4D03AQFgZBilNtPUMA/profile-displayphoto-shrink_800_800/0/1604728137407?e=1632960000&v=beta&t=QKa1Nq3WKWQGEGaiKdZ1ovp1h6uAbwPZfihdqY2_pNU'),
        ),
        Text(categoryTitle[index],
            style: GoogleFonts.badScript(textStyle: TextStyle(fontSize: 12))),
      ],
    );
  }
}

//****************************circleavatar slider widget***********************/

class SampleAvatarTwo extends StatelessWidget {
  int index;
  SampleAvatarTwo({Key? key, required this.index}) : super(key: key);
  List<dynamic> categoryIcon = [
    Icons.scale,
    Icons.laptop_mac_rounded,
    Icons.watch,
    Icons.print_rounded
  ];

  List<String> categoryTitle = [
    "Homeappliances",
    "Headphones",
    "Watches",
    "Printers"
  ];
  List<Function()> categoryIconfunction = [
    () {
      Get.to(CategoryPage(appbarTitle: "Homeappliances",));
    }, () {
      Get.to(CategoryPage(appbarTitle: "Headphones",));
    }, () {
      Get.to(CategoryPage(appbarTitle: "Watches",));
    }, () {
      Get.to(CategoryPage(appbarTitle: "Printers",));
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: Color.fromARGB(255, 192, 215, 255),
          child: IconButton(
            onPressed: 
              categoryIconfunction[index],
            
            icon: Icon(categoryIcon[index]),
            color: Colors.black,
          ),
          // backgroundImage: NetworkImage(
          //     'https://media-exp1.licdn.com/dms/image/C4D03AQFgZBilNtPUMA/profile-displayphoto-shrink_800_800/0/1604728137407?e=1632960000&v=beta&t=QKa1Nq3WKWQGEGaiKdZ1ovp1h6uAbwPZfihdqY2_pNU'),
        ),
        Text(categoryTitle[index],
            style: GoogleFonts.badScript(textStyle: TextStyle(fontSize: 12))),
      ],
    );
  }
}

//****************************carousel slider widget***********************/

class CarouselDemo extends StatelessWidget {
  List<Widget> carouselimage = [
    Image.asset(
      "assets/mobile add 1.png",
    ),
    Image.asset("assets/gadgetsadd1 1.png"),
    Image.asset("assets/banner2 1.png")
  ];
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) => Column(children: <Widget>[
        CarouselSlider(
          items: carouselimage,
          carouselController: buttonCarouselController,
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 0.9,
            aspectRatio: 2.0,
            initialPage: 2,
          ),
        ),
      ]);
}
