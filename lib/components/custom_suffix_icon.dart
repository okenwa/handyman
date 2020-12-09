import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';
import 'package:handy_man/constants.dart';
import 'package:handy_man/constants/size_config.dart';

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({
    Key key,
    @required this.svgIcon,
  }) : super(key: key);

  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
      ),
      // child: SvgPicture.asset(
      //   svgIcon,
      //   height: getProportionateScreenWidth(18),
      // ),
    );
  }
}

class FormIcon extends StatelessWidget {
  const FormIcon({
    Key key,
    @required this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        getProportionateScreenWidth(12),
        getProportionateScreenWidth(12),
        getProportionateScreenWidth(12),
        getProportionateScreenWidth(12),
      ),
      child: Icon(
        icon,
        color: kPrimaryColor,
        size: getProportionateScreenWidth(22),
      ),
    );
  }
}

TextStyle labelTextStyle() {
  return TextStyle(
    color: kPrimaryColorB,
    //fontWeight: FontWeight.bold,
    fontSize: getProportionateScreenWidth(10),
  );
}
