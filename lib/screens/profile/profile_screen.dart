import 'package:flutter/material.dart';

import '../../constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryWhiteColor,
      appBar: AppBar(
        title: Text(
          'Profile',
        ),
      ),
    );
  }
}
