import 'package:flutter/material.dart';
import 'package:handy_man/constants/size_config.dart';

import '../constants.dart';

TextStyle homeSectionHeaderStyle() {
  return TextStyle(
      fontSize: getProportionateScreenWidth(12),
      color: kBlackTextColor,
      fontWeight: FontWeight.bold);
}
