import 'package:flutter/material.dart';
import '../constants/constants.dart';
import 'dart:math' as math;

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: kWhite,
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                color: kSearchBoxBackgroundColor,
                offset: const Offset(0, 3),
                spreadRadius: 1,
                blurRadius: 3,
              )
            ],
          ),
          child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationX(math.pi),
            child: Image.asset(
              'assets/images/menu_image.png',
              width: 24,
              height: 24,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: kSearchBoxBackgroundColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/images/profile_image.png',
              width: 35,
              height: 35,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ],
    );
  }
}
