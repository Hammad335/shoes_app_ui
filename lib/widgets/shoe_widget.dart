import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../models/shoe.dart';
import '../widgets/price_tag_widget.dart';

class ShoeWidget extends StatelessWidget {
  final Shoe shoe;
  ShoeWidget({required this.shoe});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: kSearchBoxBackgroundColor,
            offset: const Offset(1, 1),
            blurRadius: 4,
            spreadRadius: 1,
          )
        ],
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Icon(
              shoe.isFavorite ? Icons.favorite : Icons.favorite_border,
              color: shoe.isFavorite ? Colors.red : Colors.black,
            ),
          ),
          const SizedBox(height: 4),
          SizedBox(
            height: 130,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.pink.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(math.pi),
                    child: Transform.rotate(
                      angle: 0.3,
                      child: Image.asset(
                        shoe.imagePath,
                        width: 150,
                        height: 120,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 6),
          Text(
            shoe.name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            shoe.subTitle,
            style: const TextStyle(
              color: Colors.orange,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 18),
          PriceTagWidget(price: shoe.price),
        ],
      ),
    );
  }
}
