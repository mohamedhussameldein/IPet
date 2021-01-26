import 'package:flutter/material.dart';
import 'package:ipetv1/constants/constants.dart';
import 'package:ipetv1/providers/intro_screen/intro_screen_data.dart';
import 'package:provider/provider.dart';

class AnimatedDotContainer extends StatelessWidget {
  final int index;

  AnimatedDotContainer({@required this.index});
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: kThemeAnimationDuration,
      margin: EdgeInsets.only(right: 25),
      height: 6,
      width:
          Provider.of<IntroScreenData>(context).currentPage == index ? 50 : 10,
      decoration: BoxDecoration(
        color: Provider.of<IntroScreenData>(context).currentPage == index
            ? AppConst.kPrimaryColor
            : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
