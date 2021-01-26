import 'package:flutter/material.dart';

import 'label.dart';

class IPetDefaultButton extends StatelessWidget {
  IPetDefaultButton({
    @required this.onTap,
    this.buttonTitle,
    this.colour,
    this.height,
    this.width,
    this.textColour,
    this.myBorderRadius,
    this.iPetBoxShadow,
    this.iPetBoxBorder,
    this.btnImage,
    this.padding = const EdgeInsets.fromLTRB(20, 0, 20, 0),
  });

  final Function onTap;
  final String buttonTitle;
  final Color colour;
  final double height;
  final double width;
  final Color textColour;
  final BorderRadiusGeometry myBorderRadius;
  final List<BoxShadow> iPetBoxShadow;
  final BoxBorder iPetBoxBorder;
  final Widget btnImage;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: GestureDetector(
        onTap: onTap,
        // behavior: HitTestBehavior.opaque,
        child: Container(
          decoration: BoxDecoration(
            color: colour,
            borderRadius: myBorderRadius,
            boxShadow: iPetBoxShadow,
            border: iPetBoxBorder,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image.asset('assets/images/icggl.png'),
              // btnImage,
              Label(
                textColor: textColour,
                text: buttonTitle,
              ),
            ],
          ),
          // color: colour,
          margin: const EdgeInsets.only(top: 25.0),
          height: height,
        ),
      ),
    );
  }
}
