import 'package:flutter/material.dart';
import 'package:handy_man/constants.dart';
import 'package:handy_man/constants/size_config.dart';
import 'package:handy_man/screens/sign_in/sign_in_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroPage extends StatelessWidget {
  static String routeName = '/splash';
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);

    return IntroductionScreen(
      animationDuration: 400,
      showSkipButton: true,
      // ignore: missing_required_param
      skip:  FlatButton(
        child: Text('Skip'),
      ),
      onSkip: () => [],
      showNextButton: true,
      // ignore: missing_required_param
      next:  FlatButton(
        child: Text('Next'),
      ),
      globalBackgroundColor: kWhiteColor,
      dotsDecorator: DotsDecorator(
          color: Colors.blue[100],
          activeColor: kPrimaryColor
      ),
      pages: [
        PageViewModel(
          title: "Welcome To Handy Man",
          body: "Your last stop for finding skilled repairmen.",
          image: Center(
            child: Image.asset("assets/images/fix2t.gif", height: MediaQuery.of(context).size.width / 1.3),
          ),
        ),
        PageViewModel(
          title: "Is It Broken?",
          body: "We will get it fixed, with warranty!",
          image: Center(
            child: Image.asset("assets/images/fix.gif", height: MediaQuery.of(context).size.width / 1.3),
          ),
        ),
        PageViewModel(
          title: "Quality",
          body: "Select from highly rated professionals.",
          image: Center(
            child: Image.asset("assets/images/fix3.gif", height: MediaQuery.of(context).size.width / 1.3),
          ),
        ),
        PageViewModel(
          title: "Yes!",
          body: "Whatever it is you need fixed, we've got you covered.",
          image: Center(
            child: Image.asset("assets/images/fix2.gif", height: MediaQuery.of(context).size.width / 1.3),
          ),
        ),
        PageViewModel(
          title: "Adios!",
          body: "Say goodbye to a poorly done job!",
          image: Center(
            child: Image.asset("assets/images/cry.gif", height: MediaQuery.of(context).size.width / 1.3),
          ),
        )
      ], done: const Text('Done'),
      onDone: () {
        Navigator.popAndPushNamed(
            context, SignInScreen.routeName);
      },

    );
  }
}
