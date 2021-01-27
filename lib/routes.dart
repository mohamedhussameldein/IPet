import 'package:flutter/widgets.dart';
import 'package:ipetv1/screens/home_screen/ipet_home_screen.dart';
import 'package:ipetv1/screens/intro_screen/intro_screen.dart';
import 'package:ipetv1/screens/login_screen/login_screen.dart';

import 'screens/intro_screen/intro_screen.dart';
import 'screens/login_screen/login_screen.dart';
import 'screens/splash/splash_screen.dart';

// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  // IntroScreen.routeName: (context) => IntroScreen(),
  // IPetLoginScreen.routeName: (context) => IPetLoginScreen(),
  // IPetNavHomeScreen.routeName : (context)=> IPetNavHomeScreen(),
  // IPetRoutePaths.introScreen: (context) => IntroScreen(),
  // IPetRoutePaths.loginScreen: (context) => IPetLoginScreen(),
  // IPetRoutePaths.homeScreen :(context)=> IPetNavHomeScreen(),

  SplashScreen.id: (context) => SplashScreen(),
  IntroScreen.id: (context) => IntroScreen(),
  IPetLoginScreen.id: (context) => IPetLoginScreen(),
  IPetNavHomeScreen.id: (context) => IPetNavHomeScreen(),
};
