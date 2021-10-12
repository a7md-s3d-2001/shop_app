import 'package:flutter/material.dart';

import '../../constants.dart';

class HomeDrawerCardItem extends StatelessWidget {
  const HomeDrawerCardItem({
    required this.icon,
    required this.itemTitle,
    required this.onTap,
  });

  final icon;
  final String itemTitle;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0,),
      child: Container(
        decoration: Constants.primaryBoxDecorationContainer,
        child: ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: Constants.primaryBorderRadius,
          ),
          leading: Icon(
            icon,
            // size: 30,
            color: Constants.primaryPurpleColor,
          ),
          title: Text(
            itemTitle,
            style: TextStyle(
              // fontSize: 18,
              color: Constants.primaryPurpleColor,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 14,
            color: Constants.primaryPurpleColor,
          ),
          onTap: () {
            onTap();
          },
        ),
      ),
    );
  }
}