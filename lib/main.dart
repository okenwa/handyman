import 'package:flutter/material.dart';
import 'package:handy_man/constants/size_config.dart';
import 'package:handy_man/routes.dart';
import 'package:handy_man/theme.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Base',
      theme: theme(),
      //home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

class SplashScreen extends StatelessWidget {
  static String routeName = '/splash';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            color: kWhiteColor,
            child: Text(
              'HomeBase Pilot',
              style: TextStyle(color: kPrimaryColor
                  //fontSize: getProportionateScreenWidth(10),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
