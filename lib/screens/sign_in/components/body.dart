import 'package:flutter/material.dart';
import 'package:handy_man/components/terms_and_conditions_text.dart';
import 'package:handy_man/constants.dart';
import 'package:handy_man/constants/size_config.dart';
import 'package:handy_man/components/no_account_text.dart';
import 'package:handy_man/components/social_card.dart';
import 'package:handy_man/screens/sign_in/components/sign_in_form.dart';

class SignInBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HANDY ",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(36),
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.home_repair_service_outlined,
                      size: getProportionateScreenWidth(36),
                      color: kPrimaryColor,
                    ),
                    Text(
                      " MAN",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(36),
                        color: kPrimaryColorB,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: SizeConfig.screenHeight * 0.02),
                SignInForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: 'assets/icons/google-icon.svg',
                      press: () {
                        //Navigator.pushNamed(context, HomeScreen.routeName);
                      },
                    ),
                    SocialCard(
                      icon: 'assets/icons/facebook-2.svg',
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                NoAccountText(),
                SizedBox(height: getProportionateScreenHeight(20)),
                Container(
                  width: getProportionateScreenWidth(120),
                  height: getProportionateScreenWidth(100),
                  child: Image.asset(
                    'assets/images/logomaincrop.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(20)),

                buildTermsAndConditionsGestureDetectorText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
