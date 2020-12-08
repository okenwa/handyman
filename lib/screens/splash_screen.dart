
import 'package:flutter/material.dart';
import 'package:handy_man/constants.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroPage extends StatelessWidget {
  static String routeName = '/splash';
  @override
  Widget build(BuildContext context) {

    return IntroductionScreen(
      animationDuration: 400,
      showSkipButton: true,
      // ignore: missing_required_param
      skip:  FlatButton(
        child: Text('End'),
      ),
      onSkip: () => [],
      showNextButton: true,
      // ignore: missing_required_param
      next:  FlatButton(
        child: Text('Next'),
      ),
      globalBackgroundColor: kWhiteColor,
      dotsDecorator: DotsDecorator(
          color: Colors.white,
          activeColor: kPrimaryColor
      ),
      pages: [
        PageViewModel(
          title: "Welcome To Handy Man",
          body: "Your last stop for finding skilled artisans.",
          image: Center(
            child: Image.asset("assets/images/fix2.gif", height: MediaQuery.of(context).size.width / 1.3),
          ),
        ),
        PageViewModel(
          title: "Search No More",
          body: "We will get it fixed, with warranty!",
          image: Center(
            child: Image.asset("assets/images/fix.gif", height: MediaQuery.of(context).size.width / 1.3),
          ),
        ),
        PageViewModel(
          title: "We'vegot you covered!",
          body: "Your last stop for finding skilled artisans.",
          image: Center(
            child: Image.asset("assets/images/fix2t.gif", height: MediaQuery.of(context).size.width / 1.3),
          ),
        ),
        PageViewModel(
          title: "Oh Yes",
          body: "Consider it done!.",
          image: Center(
            child: Image.asset("assets/images/fix3.gif", height: MediaQuery.of(context).size.width / 1.3),
          ),
        ),
        PageViewModel(
          title: "Handy Man",
          body: "It is finished",
          image: Center(
            child: Image.asset("assets/images/fixt.gif", height: MediaQuery.of(context).size.width / 1.3),
          ),
        )
      ], done: const Text('Done'),
      onDone: () {
       // Get.to(Wrapper());
      },

    );
  }
}
