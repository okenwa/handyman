import 'package:flutter/material.dart';
import 'package:handy_man/constants/size_config.dart';
import 'package:handy_man/routes.dart';
import 'package:handy_man/screens/splash_screen.dart';
import 'package:handy_man/theme.dart';
import 'package:introduction_screen/introduction_screen.dart';

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
      home: IntroPage(),
     // initialRoute: IntroductionScreen.routeName,
      routes: routes,
    );
  }
}

class Main extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),

      // SafeArea(
      //   child: Column(
      //     children: [
      //       Container(
      //         color: kWhiteColor,
      //         child: Text(
      //           'HomeBase Pilot',
      //           style: TextStyle(color: kPrimaryColor
      //               //fontSize: getProportionateScreenWidth(10),
      //               ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
