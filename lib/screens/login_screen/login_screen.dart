import 'package:country_code_picker/country_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ipetv1/constants/constants.dart';
import 'package:ipetv1/screens/login_screen/components/login_body.dart';

class IPetLoginScreen extends StatelessWidget {
  static String routeName = "/login-screen";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: [
        Locale('en'),
        Locale('it'),
        Locale('fr'),
        Locale('es'),
        Locale('de'),
        Locale('pt'),
        Locale('ko'),
        Locale('zh'),
      ],
      localizationsDelegates: [
        CountryLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      home: Scaffold(
        backgroundColor: AppConst.kPrimaryWhiteBgColor,
        body: LoginBody(),
      ),
    );
  }
}
