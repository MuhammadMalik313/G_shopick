import 'package:e_cart/controller/bottombar_pagecontroller.dart';
import 'package:e_cart/presentation/Screens/bottombar/account_scrren.dart';
import 'package:e_cart/presentation/Screens/cart/cart_screen.dart';
import 'package:e_cart/presentation/Screens/bottombar/homescreen.dart';
import 'package:e_cart/presentation/Screens/bottombar/orders_screen.dart';
import 'package:e_cart/presentation/Screens/bottombar/wish_list_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constatnts/color/colors.dart';

class BottomNavBarWidgetchange extends StatelessWidget {
  const BottomNavBarWidgetchange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomBarController>(
      init: BottomBarController(),

      builder: (controller) {
        return Scaffold(
          body: IndexedStack(
            index: controller.tabindex,
            children: [
              HomePage(),
              // CartScreen(),
              OrderScreen(),
              WishListScreen(),
              AccountScreen()
            ],
          ),
           bottomNavigationBar: BottomNavigationBar(
          onTap: controller.changeTabindex,
          currentIndex: controller.tabindex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: appThemecolor,
          type: BottomNavigationBarType.fixed,
          items: [
            _bottomNavigatoritems(CupertinoIcons.home, "Home"),
            _bottomNavigatoritems(Icons.shopping_bag, "Orders"),
          //_bottomNavigatoritems(Icons.shopping_cart, "Orders"),
            _bottomNavigatoritems(Icons.favorite_outlined, "Wishlist"),
            _bottomNavigatoritems(Icons.person, "Account")
          ]),
        );
      }
    );
  }
    _bottomNavigatoritems(IconData bottomIcon, String bottomLabel) {
    return BottomNavigationBarItem(icon: Icon(bottomIcon), label: bottomLabel);
  }
}
