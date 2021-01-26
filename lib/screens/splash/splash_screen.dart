import 'package:flutter/material.dart';
import 'package:ipetv1/constants/constants.dart';
import 'package:ipetv1/screens/splash/components/body.dart';
import 'package:ipetv1/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: AppConst.kPrimaryWhiteBgColor,
      body: SplashBody(),
    );
  }
}
