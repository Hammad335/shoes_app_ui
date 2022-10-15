import 'package:flutter/material.dart';
import 'package:shoes_app/constants/constants.dart';
import 'package:shoes_app/models/category.dart';

import '../constants/enums.dart';

class CategoryWidget extends StatelessWidget {
  final Category category;

  CategoryWidget({required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 15),
      margin: const EdgeInsets.only(right: 20),
      height: 65,
      decoration: BoxDecoration(
        color: category.name == CATEGORY_NAMES.Nike.name ? kWhite : null,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: category.name == 'Nike'
              ? Colors.orange
              : kSearchBoxBackgroundColor,
          width: 2,
        ),
      ),
      child: Row(
        children: [
          Transform.rotate(
            angle: 0.4,
            child: Image.asset(
              category.imagePath,
              width: 65,
              height: 65,
              // fit: BoxFit.fill,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            category.name,
            style: const TextStyle(
              fontSize: 18,
              letterSpacing: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
