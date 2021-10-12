import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Constants {
  /// Constants color
  static const Color primaryWhiteColor = Color(0xffffffff);
  static const Color primaryBlackColor = Color(0xff000000);
  static const Color primaryPurpleColor = Color(0xff3d155f);
  static const Color primarySecondColor = Color(0xff698496);
  static const Color primaryThirdColor = Color(0xffd2bec1);

  /// constants number

  static BorderRadius primaryBorderRadius = BorderRadius.circular(10.0);
  static EdgeInsets primaryPadding = const EdgeInsets.all(20.0);


  static BoxDecoration primaryBoxDecorationContainer = BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: primaryPurpleColor.withOpacity(0.1),
        spreadRadius: 5,
        blurRadius: 20,
        offset: Offset(0, 0), // changes position of shadow
      ),
    ],
    borderRadius: primaryBorderRadius,
    color: primaryWhiteColor,
  );

  /// constants images
  static const String shopLogo = 'images/shop_logo.png';
  static const String onBoarding1 = 'images/on_boarding_1.jpg';
  static const String onBoarding2 = 'images/on_boarding_2.jpg';
  static const String onBoarding3 = 'images/on_boarding_3.jpg';

  /// this method navigator to page
  static void navigatorPush({context, screen}) {
    Navigator.push(
      context,
      PageTransition(
        type: PageTransitionType.fade,
        child: screen,
      ),
    );
  }

  /// this method navigator to page and remove prev page
  static void navigatorPushAndRemove({context, screen}) {
    Navigator.pushAndRemoveUntil(
      context,
      PageTransition(
        type: PageTransitionType.fade,
        child: screen,
      ),
      (route) => false,
    );
  }

}
