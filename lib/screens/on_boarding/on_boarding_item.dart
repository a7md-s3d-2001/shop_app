import 'package:flutter/material.dart';

import '../../constants.dart';
import 'on_boarding_model.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem({
    Key? key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: height * 0.35,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: Constants.primaryBorderRadius,
              child: Image(
                image: AssetImage('${model.image}'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            '${model.title}',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w900,
              color: Constants.primaryPurpleColor,
            ),
          ),
          Text(
            '${model.body}',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
