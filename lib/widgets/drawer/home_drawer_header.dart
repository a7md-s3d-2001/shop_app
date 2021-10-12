import 'package:flutter/material.dart';
import 'package:shop_app/screens/profile/profile_screen.dart';

import '../../constants.dart';

class HomeDrawerHeader extends StatelessWidget {
  const HomeDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 10.0,
        ),
        child: Container(
          decoration: Constants.primaryBoxDecorationContainer,
          child: InkWell(
            borderRadius: Constants.primaryBorderRadius,
            onTap: () {
              Constants.navigatorPush(
                  context: context,
                  screen: ProfileScreen(),
              );
            },
            child: Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(50.0),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Constants.primaryPurpleColor,
                            width: 2.0,
                          ),
                        ),
                        child: Icon(
                          Icons.person,
                          size: width * 0.25,
                          color: Constants.primaryPurpleColor,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.04,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Ahmed Saad',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Constants.primaryPurpleColor,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '01026272813',
                              style: TextStyle(
                                fontSize: 14,
                                color: Constants.primaryPurpleColor,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
