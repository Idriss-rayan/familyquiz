import 'package:familyquiz/constants.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class progressBar extends StatelessWidget {
  const progressBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xff3f4768), width: 3),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Stack(
        children: [
          // layoutbuilder provide us available space for the container
          LayoutBuilder(
            builder: (context, constraints) => Container(
              width: constraints.maxWidth * 0.5,
              decoration: BoxDecoration(
                gradient: kPrimaryGradient,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          Positioned.fill(
              child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("18 secs"),
                WebsafeSvg.asset("assets/icons/clocks.svg"),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
