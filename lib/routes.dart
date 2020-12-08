import 'package:flutter/widgets.dart';
import 'package:handy_man/screens/sign_in/sign_in_screen.dart';


// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SignInScreen.routeName: (context) => SignInScreen(),
};
