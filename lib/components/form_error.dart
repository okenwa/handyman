import 'package:flutter/material.dart';
import 'package:handy_man/constants.dart';
//import 'package:flutter_svg/svg.dart';
import 'package:handy_man/constants/size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key key,
    @required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(errors.length, (index) => formErrorText(error: errors[index]))
    );
  }

  Row formErrorText({String error}) {
    return Row(
      children: [
        Icon(Icons.close, size: getProportionateScreenWidth(14), color: kPrimaryColor,),
        // SvgPicture.asset(
        //   'assets/icons/Error.svg',
        //   height: getProportionateScreenHeight(14),
        //   width: getProportionateScreenWidth(14),
        // ),
        SizedBox(width: getProportionateScreenWidth(10)),
        Text(error),
      ],
    );
  }
}