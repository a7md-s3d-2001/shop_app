import 'package:flutter/material.dart';

import '../constants.dart';

class CustomDialogDoYouWant extends StatelessWidget {
  const CustomDialogDoYouWant({
    Key? key,
    required this.onTapYes,
    required this.title,
  });

  final onTapYes;
  final title;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: Constants.primaryBorderRadius,
      ),
      backgroundColor: Constants.primaryWhiteColor,
      content: Row(
        children: [
          Expanded(
            child: MaterialButton(
              // padding: const EdgeInsets.symmetric(vertical: 15.0),
              onPressed: () {
                onTapYes();
              },
              child: Text(
                'YES',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
              color: Colors.green,
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: Constants.primaryBorderRadius,
              ),
            ),
          ),
          SizedBox(
            width: 5.0,
          ),
          Expanded(
            child: MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'NO',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
              color: Colors.red,
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: Constants.primaryBorderRadius,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
