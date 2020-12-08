import 'package:flutter/material.dart';
import 'package:handy_man/constants/size_config.dart';

import '../constants.dart';

class SecuredByHomeBaseText extends StatelessWidget {
  const SecuredByHomeBaseText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: getProportionateScreenWidth(2),
          ),
          child: Icon(
            Icons.check_circle_outline,
            color: Colors.green[400],
            size: getProportionateScreenWidth(15),
          ),
        ),
        Text(
          "Secured by",
          style: TextStyle(
            color: Colors.green[400],
            fontSize: getProportionateScreenWidth(10),
          ),
        ),
        Text(
          " Home Base",
          style: TextStyle(
              color: kPrimaryColor,
              fontSize: getProportionateScreenWidth(10),
              fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(2),
          ),
          child: Icon(
            Icons.lock_outline_rounded,
            color: kPrimaryColor,
            size: getProportionateScreenWidth(15),
          ),
        ),
      ],
    );
  }
}
