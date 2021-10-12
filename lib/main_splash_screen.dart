import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:shop_app/screens/on_boarding/on_boarding_screen.dart';

import 'constants.dart';
import 'screens/auth/log_in_screen.dart';

class MainSplashScreen extends StatefulWidget {
  const MainSplashScreen({
    Key? key,
    required this.onBoarding,
  });

  final onBoarding;

  @override
  State<MainSplashScreen> createState() => _MainSplashScreenState();
}

class _MainSplashScreenState extends State<MainSplashScreen> {
  @override
  void initState() {
    super.initState();

    /// this fuc to wait app for build and do timer to avoid un save operations
    SchedulerBinding.instance!.addPostFrameCallback(
      (_) {
        Timer(
          Duration(
            seconds: 2,
          ),
          () {
            Constants.navigatorPushAndRemove(
              context: context,
              screen: widget.onBoarding ? LogInScreen() : OnBoardingScreen(),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Constants.primaryWhiteColor,
      appBar: AppBar(
        title: Text(
          'SHOP APP',
        ),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: height * 0.15,
                child: Image.asset(
                  Constants.shopLogo,
                ),
              ),
              CircularProgressIndicator(
                color: Constants.primaryPurpleColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
