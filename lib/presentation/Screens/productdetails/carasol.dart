import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselProduct extends StatelessWidget {
  CarouselProduct({Key? key}) : super(key: key);

  final List<String> imageList = [
    "https://images.officeworks.com.au/api/2/img///s3-ap-southeast-2.amazonaws.com/wc-prod-pim/Category_400x400/13procattile_2022.jpg/resize?size=300&auth=MjA5OTcwODkwMg__",
    'https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1631773696/Croma%20Assets/Communication/Mobiles/Images/243460_yi4yqb.png/mxw_2256,f_auto',
    "https://content.abt.com/image.php/Apple-Green-iPhone-13-IPHONE13GREEN-side-bye-side.jpg?image=/images/products/BDP_Images/Apple-Green-iPhone-13-IPHONE13GREEN-side-bye-side.jpg&canvas=1&min_w=750&min_h=550",
    "https://content.abt.com/image.php/Apple-Green-iPhone-13-IPHONE13GREEN-side-by-side-angled.jpg?image=/images/products/BDP_Images/Apple-Green-iPhone-13-IPHONE13GREEN-side-by-side-angled.jpg&canvas=1&min_w=750&min_h=550"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: CarouselSlider.builder(
        itemCount: imageList.length,
        options: CarouselOptions(
          enlargeCenterPage: true,
          height: 300,

          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          reverse: false,
          // aspectRatio: 5.0,
        ),
        itemBuilder: (context, i, id) {
          //for onTap to redirect to another screen
          return GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.white,
                  )),
              //ClipRRect for image border radius
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  imageList[i],
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // onTap: () {
            //   var url = imageList[i];
            // },
          );
        },
      ),
    );
  }
}
