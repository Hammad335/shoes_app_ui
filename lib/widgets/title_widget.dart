import 'package:flutter/material.dart';
import '../constants/constants.dart';

class TitleWidget extends StatelessWidget {
  String title;
  String subTitle;
  TitleWidget({required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: kTitleStyle),
        Text(subTitle, style: kSubTitleStyle),
      ],
    );
  }
}
