import 'package:e_cart/constatnts/color/colors.dart';
import 'package:e_cart/presentation/Screens/chat/chatscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../../constatnts/textstyle/textstyle.dart';

class OrderDetailsPage extends StatelessWidget {
  OrderDetailsPage({Key? key}) : super(key: key);
  int current_step = 0;
  List<Step> steps = [
    Step(
      state: StepState.indexed,
      title: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Lottie.network(
            'https://assets10.lottiefiles.com/packages/lf20_5ngs2ksb.json',
            height: 70,
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Ordered",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              const Text(
                "Ordered on june 22,2022",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ],
      ),
      content: const Text(''),
      // subtitle: Text("data"),
      isActive: true,
    ),
    Step(
      title: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Lottie.network(
            'https://assets10.lottiefiles.com/private_files/lf30_nas75dmu.json',
            height: 50,
          ),
          // SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Shipped",
                style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              const Text(
                "Shipped on june 22,2022",
                style: const TextStyle(color: Colors.grey),
              )
            ],
          ),
        ],
      ),
      content: const Text(''),
      // subtitle: Text("data"),
      isActive: true,
    ),
    Step(
      // state: StepState.complete,
      title: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Lottie.network(
            'https://assets4.lottiefiles.com/packages/lf20_w5oe9omf.json',
            height: 70,
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Delivered",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              const Text(
                "Your item has been deliverd",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ],
      ),
      content: const Text(''),
      // subtitle: Text("data"),
      isActive: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final wsize = MediaQuery.of(context).size.width;
    final hsize = MediaQuery.of(context).size.height;
    final ksizedbox = SizedBox(
      height: hsize * .03,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appThemecolor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Order ID-RFFdsaedTRQ12D4",
              style: TextStyle(color: Colors.grey),
            ),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
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
                            textStyle: const TextStyle(fontSize: 18)),
                      ),
                      SizedBox(
                        height: hsize * .011,
                      ),
                      Text(
                        "₹79,850",
                        style: styleOftextprice,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "1 Item",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      )
                    ],
                  ),
                )
              ],
            ),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            Theme(
              data: ThemeData(
                  colorScheme: ColorScheme.light(primary: appThemecolor)),
              child: Stepper(
                steps: steps,
                controlsBuilder: (context, _) {
                  return Row(
                    children: [],
                  );
                },
              ),
            ),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            const Text(
              "Shippinng details",
              style: const TextStyle(fontSize: 20),
            ),
            Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Malik\nCarnival Infopark,\nPhase 2,\nKakkanadu,\nPin  : 691304\nkerala,\nIndia,\nPhone number:994767656",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
            const Text(
              "Price Details",
              style: const TextStyle(fontSize: 20),
            ),
            const ListTile(
              leading: Text(
                "Payment method",
                style: TextStyle(fontSize: 20),
              ),
              trailing: Text("Online payment"),
            ),
            const ListTile(
              leading: const Text(
                "Product price",
                style: TextStyle(fontSize: 20),
              ),
              trailing: const Text("₹79,850"),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: () {
              Get.to(() => const ChatUi());
            },
            child: const Text("HELP")),
      ),
    );
  }
}

class ChatUi extends StatelessWidget {
  const ChatUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Ask To us"),
        backgroundColor: appThemecolor,
      ),
      body: ListView(
        children: const [
          ChatBubble(
            text: 'How was the concert?',
            isCurrentUser: false,
          ),
          ChatBubble(
            text: 'Awesome! Next time you gotta come as well!',
            isCurrentUser: true,
          ),
          ChatBubble(
            text: 'Ok, when is the next date?',
            isCurrentUser: false,
          ),
          ChatBubble(
            text: 'They\'re playing on the 20th of November',
            isCurrentUser: true,
          ),
          ChatBubble(
            text: 'Let\'s do it!',
            isCurrentUser: false,
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
                      children: [
                        Expanded(
                          flex: 18,
                          child: TextFormField(decoration: InputDecoration(
                            isDense: true,
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(40))),)
                        ),
                        const SizedBox(width: 3,),
                        Expanded(
                          flex: 2,
                          child:Icon(Icons.send,size: 40,color: appThemecolor,)
                        )
                      ],
                    ),
      ),
    );
  }
}
