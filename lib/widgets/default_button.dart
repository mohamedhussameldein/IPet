import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.text,
    this.press,
    this.fontFamily = AppConst.montserrat,
    this.fontWeight = FontWeight.bold,
    this.shape,
  }) : super(key: key);
  final String text;
  final Function press;
  final String fontFamily;
  final FontWeight fontWeight;
  final ShapeBorder shape;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: FlatButton(
        shape: shape,
        color: AppConst.kPrimaryColor,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontFamily: fontFamily,
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
