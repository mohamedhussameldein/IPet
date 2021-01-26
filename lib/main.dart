import 'package:flutter/material.dart';
import 'package:ipetv1/providers/intro_screen/intro_screen_data.dart';
import 'package:ipetv1/providers/nav_b_bar/navigation_bbar_data.dart';
import 'package:ipetv1/routes.dart';
import 'package:ipetv1/screens/splash/splash_screen.dart';
import 'package:ipetv1/theme.dart';
import 'package:provider/provider.dart';

import 'screens/intro_screen/intro_screen.dart';
import 'screens/intro_screen/intro_screen.dart';
import 'screens/splash/splash_screen.dart';

// import 'package:shop_app/routes.dart';
// import 'package:shop_app/screens/profile/profile_screen.dart';
// import 'package:shop_app/screens/splash/splash_screen.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MultiProvider(
              providers: [
                ChangeNotifierProvider(
                  create: (context) => IntroScreenData(),
                ),
                ChangeNotifierProvider(
                  create: (context) => NavigationBBarData(),
                ),
              ],
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                // title: 'Flutter Demo',
                theme: theme(),
                // home: SplashScreen(),
                // We use routeName so that we dont need to remember the name
                initialRoute: IntroScreen.id,
                routes: routes,
              ),
            ),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    // MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'Flutter Demo',
    //   theme: theme(),
    //   home: SplashScreen(),
    //   // We use routeName so that we dont need to remember the name
    //   initialRoute: SplashScreen.routeName,
    //   routes: routes,
    // );
    return SplashScreen();
    // We use routeName so that we dont need to remember the name

    // return initialRoute: SplashScreen.routeName;
    //   routes: routes,
    // );
  }
}
