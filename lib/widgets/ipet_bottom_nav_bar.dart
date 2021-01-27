import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ipetv1/constants/constants.dart';
import 'package:ipetv1/providers/nav_b_bar/navigation_bbar_data.dart';
import 'package:provider/provider.dart';

class IPetBottomNavBar extends StatelessWidget {
  static String id = "IPetNavHomeScreen";
  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationBBarData>(
      builder: (context, navBBarData, child) {
        return CustomNavigationBar(
          iconSize: 30.0,
          selectedColor: Colors.white,
          strokeColor: Colors.white12,
          unSelectedColor: Colors.grey[600],
          backgroundColor: AppConst.nearlyBlack,
          borderRadius: Radius.circular(20.0),
          blurEffect: true,
          opacity: 0.8,
          items: [
            CustomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.paw,
              ),
            ),
            CustomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.filter,
              ),
            ),
            CustomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.heart,
              ),
            ),
            CustomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.shoppingBasket,
              ),
            ),
            CustomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.userAlt,
              ),
            ),
          ],
          currentIndex: navBBarData.currentIndex,
          onTap: (index) {
            navBBarData.currentIndex = index;
            navBBarData.pageController.animateToPage(navBBarData.currentIndex,
                duration: Duration(milliseconds: 500), curve: Curves.linear);
          },
          isFloating: true,
        );
      },
    );
  }
}
