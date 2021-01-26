import 'package:flutter/material.dart';

import 'label.dart';

class BottomButton extends StatelessWidget {
  BottomButton({
    @required this.onTap,
    @required this.buttonTitle,
    @required this.height,
    this.color,
  });

  final Function onTap;
  final String buttonTitle;
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Label(
            text: buttonTitle,
          ),
        ),
        color: color,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: height,
      ),
    );
  }
}
