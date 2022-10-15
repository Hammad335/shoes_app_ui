import 'package:flutter/material.dart';
import '../constants/constants.dart';

class Utils {
  static Widget getRatings() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: List.generate(
        5,
        (index) => Icon(
          index == 4 ? Icons.star_border : Icons.star,
          color:
              index == 4 ? kSearchBoxBackgroundColor : Colors.deepOrangeAccent,
          size: 16,
        ),
      ),
    );
  }
}
