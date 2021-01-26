import 'package:flutter/material.dart';
import 'package:ipetv1/providers/nav_b_bar/navigation_bbar_data.dart';
import 'package:ipetv1/screens/home_screen/components/ipet_page_view.dart';
import 'package:ipetv1/widgets/ipet_bottom_nav_bar.dart';
import 'package:provider/provider.dart';

class IPetNavHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    NavigationBBarData navigationBBarData =
        Provider.of<NavigationBBarData>(context, listen: false);
    navigationBBarData.pageController = PageController(
      initialPage: navigationBBarData.currentIndex,
      keepPage: true,
    );
    return Stack(
      children: [
        IPetPageView(),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: IPetBottomNavBar(),
        ),
      ],
    );
  }
}
