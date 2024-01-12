/*
 *  Define comman app styles
 */

import 'package:flutter/material.dart';
import 'package:note_taking_app/src/utils/colors.dart';

class AppStyles {
  static const TextStyle headingTextStyle = TextStyle(
      color: AppColors.colorBlackText,
      fontSize: 22.0,
      fontFamily: 'AkayaKanadaka'
      //fontWeight: FontWeight.bold,
      );

  static const TextStyle inputTextStyle = TextStyle(
    color: AppColors.blackColor,
    fontSize: 14.0,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );

  static const TextStyle hintTextStyle = TextStyle(
    color: AppColors.colorPlaceHolde,
    fontSize: 14.0,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );

  static const TextStyle lightTextStyle = TextStyle(
    color: AppColors.colorPlaceHolde,
    fontSize: 12.0,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );

  static const TextStyle defaultButtonTextStyle = TextStyle(
    fontSize: 18.0,
    color: AppColors.whiteColor,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
  );

  static const TextStyle buttonTextStyle = TextStyle(
    fontSize: 15.0,
    color: AppColors.colorBlackText,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );

  static ButtonStyle buttonStyle = TextButton.styleFrom(
    backgroundColor: AppColors.primaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
  );

  static ButtonStyle lightBgButtonStyle = TextButton.styleFrom(
    backgroundColor: AppColors.secondaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
  );

  static const BoxDecoration containerDecoration = BoxDecoration(
    color: AppColors.secondaryColor,
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  );

  static const TextStyle createAccountTextStyle = TextStyle(
    fontSize: 16.0,
    color: AppColors.colorBlackText,
    fontFamily: 'AkayaKanadaka',
    fontWeight: FontWeight.w400,
  );

  static const TextStyle dontAccountTextStyle = TextStyle(
    fontSize: 14.0,
    color: AppColors.colorBlackText,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );
}
