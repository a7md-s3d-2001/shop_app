import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.hint,
    required this.controller,
    required this.iconData,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
  });

  final hint;
  final controller;
  final iconData;
  final keyboardType;
  final obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: Constants.primaryBoxDecorationTextFormField,
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return '$hint required';
          }
          return null;
        },
        obscureText: obscureText,
        controller: controller,
        keyboardType: keyboardType,
        cursorColor: Constants.primaryPurpleColor,
        style: TextStyle(
          color: Constants.primaryPurpleColor,
        ),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: Constants.primaryBorderRadius,
            borderSide: BorderSide(
              color: Constants.primaryPurpleColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: Constants.primaryBorderRadius,
            borderSide: BorderSide(
              color: Constants.primaryPurpleColor,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: Constants.primaryBorderRadius,
            borderSide: BorderSide(
              color: Constants.primaryPurpleColor,
            ),
          ),
          filled: true,
          fillColor: Constants.primaryWhiteColor,
          hintStyle: TextStyle(
            color: Constants.primaryPurpleColor,
          ),
          prefixIcon: Icon(
            iconData,
            color: Constants.primaryPurpleColor,
          ),
          hintText: hint,
        ),
      ),
    );
  }
}
