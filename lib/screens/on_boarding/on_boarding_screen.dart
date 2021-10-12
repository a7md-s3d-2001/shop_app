import 'package:flutter/material.dart';
import 'package:shop_app/screens/auth/log_in_screen.dart';
import 'package:shop_app/services/cache_shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../constants.dart';
import 'on_boarding_item.dart';
import 'on_boarding_model.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardController = PageController();
  bool isLast = false;
  List<OnBoardingModel> boarding = [
    OnBoardingModel(
      image: Constants.onBoarding1,
      title: 'On Board 1 Title',
      body: 'On Board 1 Body',
    ),
    OnBoardingModel(
      image: Constants.onBoarding2,
      title: 'On Board 2 Title',
      body: 'On Board 2 Body',
    ),
    OnBoardingModel(
      image: Constants.onBoarding3,
      title: 'On Board 3 Title',
      body: 'On Board 3 Body',
    ),
  ];

  void submit() {
    CacheSharedPreferences.saveData(
      key: 'onBoarding',
      value: true,
    ).then(
      (value) {
        if (value) {
          Constants.navigatorPushAndRemove(
            context: context,
            screen: LogInScreen(),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Constants.primaryWhiteColor,
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              submit();
            },
            child: Text(
              'SKIP',
              style: TextStyle(
                color: Constants.primaryPurpleColor,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              physics: BouncingScrollPhysics(),
              controller: boardController,
              onPageChanged: (int index) {
                if (index == boarding.length - 1) {
                  setState(() {
                    isLast = true;
                  });
                } else {
                  setState(() {
                    isLast = false;
                  },);
                }
              },
              itemBuilder: (context, index) {
                return OnBoardingItem(
                  model: boarding[index],
                );
              },
              itemCount: boarding.length,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                SmoothPageIndicator(
                  controller: boardController,
                  effect: ExpandingDotsEffect(
                    dotColor: Colors.grey,
                    activeDotColor: Constants.primaryPurpleColor,
                    dotHeight: 10,
                    expansionFactor: 4,
                    dotWidth: 10,
                    spacing: 5.0,
                  ),
                  count: boarding.length,
                ),
                Spacer(),
                FloatingActionButton(
                  backgroundColor: Constants.primaryPurpleColor,
                  onPressed: () {
                    if (isLast) {
                      submit();
                    } else {
                      boardController.nextPage(
                        duration: Duration(
                          milliseconds: 750,
                        ),
                        curve: Curves.fastLinearToSlowEaseIn,
                      );
                    }
                  },
                  child: Icon(
                    Icons.arrow_forward_ios,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
