import 'package:familyquiz/constants.dart';
import 'package:flutter/material.dart';

class option extends StatelessWidget {
  const option({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        border: Border.all(color: kGrayColor),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Text(
            "1. text",
            style: TextStyle(
              color: kGrayColor,
              fontSize: 16,
            ),
          ),
          Spacer(),
          Container(
            height: 26,
            width: 26,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: kGrayColor),
            ),
          ),
        ],
      ),
    );
  }
}
