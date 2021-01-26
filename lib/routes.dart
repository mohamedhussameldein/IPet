import 'package:flutter/widgets.dart';
import 'package:ipetv1/constants/route_paths.dart';
import 'package:ipetv1/screens/intro_screen/intro_screen.dart';
import 'package:ipetv1/screens/login_screen/login_screen.dart';

// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  IntroScreen.routeName: (context) => IntroScreen(),
  IPetLoginScreen.routeName: (context) => IPetLoginScreen(),
  IPetRoutePaths.introScreen: (context) => IntroScreen(),
  IPetRoutePaths.loginScreen: (context) => IPetLoginScreen(),
};
