import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:handy_man/routes.dart';
import 'package:handy_man/screens/intro_page.dart';
import 'package:handy_man/theme.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
