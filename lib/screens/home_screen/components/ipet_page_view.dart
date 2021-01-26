import 'package:flutter/material.dart';
import 'package:ipetv1/providers/nav_b_bar/navigation_bbar_data.dart';
import 'package:provider/provider.dart';

class IPetPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationBBarData>(builder: (context, navBBarData, child) {
      return PageView(
        key: navBBarData.orderFormKey,
        controller: navBBarData.pageController,
        onPageChanged: (index) {
          navBBarData.pageChanged(index);
        },
        children: <Widget>[
          // You just need to replace your pages with this Container

          // DashBoardScreen(),
          // IPetCatScreen(),
          // CreateCartScreen(),
          // CartScreen(),
          // IPetSettingsScreen(),
          Scaffold(body: Container(child: Center(child: Text("First")))),
          Scaffold(body: Container(child: Center(child: Text("Second")))),
          Scaffold(body: Container(child: Center(child: Text("Third")))),
          Scaffold(body: Container(child: Center(child: Text("Fourth")))),
          Scaffold(body: Container(child: Center(child: Text("Fifth")))),
        ],
      );
    });
  }
}
