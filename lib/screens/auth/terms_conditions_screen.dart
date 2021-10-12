import 'package:flutter/material.dart';

class TermsConditionsScreen extends StatelessWidget {
  const TermsConditionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Terms and Conditions',
        ),
      ),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildCustomText(
                  'App terms and conditions are an important legal document for app developers and owners, as they establish the rules and restrictions for app use. Terms and conditions for mobile apps help protect your intellectual property, prevent misuse of your app, and limit legal disputes.',
                ),
                buildCustomText(
                  'This guide will go over what app terms and conditions are, how they benefit you and users, and how to write terms and conditions for your app. Check out examples of other app’s terms, and download our free app terms and conditions template below.',
                ),
                buildCustomText(
                  'Mobile app terms and conditions, also referred to as app terms of service or app terms of use, explain the rules, requirements, restrictions, and limitations that users must abide by in order to use a mobile application. Specifically, they act as a binding contract between you and your users. This contract helps protect the rights of both parties.',
                ),
                buildCustomText(
                  'Business owners and app developers often use the same terms and conditions for both their website and mobile applications in order to keep their terms consistent across all platforms.',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Text buildCustomText(text) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.grey[600],
        fontWeight: FontWeight.w400,
        fontSize: 14.0,
        height: 2.2,
      ),
    );
  }
}
