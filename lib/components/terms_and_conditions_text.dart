import 'package:flutter/material.dart';
import 'package:handy_man/constants/size_config.dart';

import '../constants.dart';

Column buildTermsAndConditionsGestureDetectorText() {
  return Column(
    children: [
      Text(
        "By creating an account/signing in, you confirm that you agree to our",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: getProportionateScreenWidth(10),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {},
            child: Text(
              'Terms of Service',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(11),
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            " and",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(9),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              ' Privacy Policy',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(11),
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    ],
  );
}
