import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/widgets/custom_button.dart';
import 'package:shop_app/widgets/custom_text_form_field.dart';

import '../../constants.dart';
import 'sign_up_screen.dart';
import 'terms_conditions_screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Constants.primaryWhiteColor,
      appBar: AppBar(
        title: Text(
          'LOG IN SHOP APP',
        ),
      ),
      body: Form(
        key: _globalKey,
        child: Center(
          child: SingleChildScrollView(
            physics:  BouncingScrollPhysics(),
            padding: Constants.primaryPadding,
            child: Column(
              children: [
                Center(
                  child: Container(
                    height: height * 0.15,
                    child: Image.asset(
                      Constants.shopLogo,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.07,
                ),
                CustomTextFormField(
                  hint: 'Email',
                  controller: emailController,
                  iconData: Icons.email,
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                CustomTextFormField(
                  hint: 'Password',
                  controller: passwordController,
                  iconData: Icons.lock,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                CustomButton(
                  title: 'LOG IN',
                  onTap: () {
                    if(_globalKey.currentState!.validate()){
                      Constants.navigatorPush(
                        context: context,
                        screen: HomeScreen(),
                      );
                    }
                  },
                ),
                SizedBox(
                  height: 5.0,
                ),
                CustomButton(
                  title: 'SIGN UP',
                  onTap: (){
                    Constants.navigatorPush(
                      context: context,
                      screen: SignUpScreen(),
                    );
                  },
                  backgroundColor: Constants.primaryWhiteColor,
                  borderColor: Constants.primaryPurpleColor,
                  titleColor: Constants.primaryPurpleColor,
                ),

                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Text(
                        'Read this terms and conditions',
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Constants.navigatorPush(
                          context: context,
                          screen: TermsConditionsScreen(),
                        );
                      },
                      child: Text(
                        'Terms & Conditions',
                        style: TextStyle(
                          color: Constants.primaryPurpleColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
