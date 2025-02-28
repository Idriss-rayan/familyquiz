import 'package:familyquiz/constants.dart';
import 'package:familyquiz/screens/quiz/components/progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebsafeSvg.asset("assets/icons/bg.svg", fit: BoxFit.fill),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              children: [progressBar()],
            ),
          ),
        )
      ],
    );
  }
}
