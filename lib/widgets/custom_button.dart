import 'package:flutter/material.dart';

import '../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onTap,
    required this.title,
    this.titleColor = Constants.primaryWhiteColor,
    this.backgroundColor = Constants.primaryPurpleColor,
    this.borderColor = Constants.primaryPurpleColor,
  });

  final onTap;
  final title;
  final titleColor;
  final backgroundColor;
  final borderColor;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return MaterialButton(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      shape: RoundedRectangleBorder(
        borderRadius: Constants.primaryBorderRadius,
        side: BorderSide(
          color: borderColor,
        ),
      ),
      minWidth: width,
      onPressed: () {
        onTap();
      },
      elevation: 0.0,
      color: backgroundColor,
      child: Text(
        title,
        style: TextStyle(
          color: titleColor,
          fontWeight: FontWeight.w900,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}
