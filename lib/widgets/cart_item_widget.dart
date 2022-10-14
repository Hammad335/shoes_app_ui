import 'package:flutter/material.dart';
import 'package:shoes_app/constants/constants.dart';
import 'package:shoes_app/models/shoe.dart';
import 'dart:math' as math;

class CartItemWidget extends StatelessWidget {
  final Shoe cartItem;
  CartItemWidget({required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 45),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: kSearchBoxBackgroundColor,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationY(math.pi),
                child: Transform.rotate(
                  angle: 0.6,
                  child: Image.asset(
                    cartItem.imagePath,
                    width: 90,
                    height: 40,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cartItem.name,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  const Text(
                    '\$',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(width: 2),
                  Text(
                    cartItem.price.toStringAsFixed(1),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(width: 10),
          Container(
            width: 45,
            height: 45,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: kSearchBoxBackgroundColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Text(
              'x1',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
