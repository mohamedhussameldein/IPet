import 'package:flutter/material.dart';

class MyCustomCard extends StatelessWidget {
  MyCustomCard({
    @required this.colour,
    this.childCard,
    this.myOnTap,
    this.myBorderRadius,
    this.iPetBoxShadow,
  });

  final Color colour;
  final Widget childCard;
  final Function myOnTap;
  final BorderRadiusGeometry myBorderRadius;
  final List<BoxShadow> iPetBoxShadow;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myOnTap,
      child: Container(
        child: childCard,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: myBorderRadius,
          boxShadow: iPetBoxShadow,
        ),
      ),
    );
  }
}
