import 'package:flutter/material.dart';

import '../../constants.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryWhiteColor,
      appBar: AppBar(
        title: Text(
          'SIGN UP SHOP APP',
        ),
      ),
    );
  }
}
