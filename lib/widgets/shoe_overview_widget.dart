import 'package:flutter/material.dart';
import 'package:shoes_app/constants/constants.dart';
import 'dart:math' as math;

class ShoeOverviewWidget extends StatelessWidget {
  final String shoeImagePath;

  ShoeOverviewWidget({required this.shoeImagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationY(math.pi),
          child: Image.asset(
            shoeImagePath,
            width: 200,
            height: 200,
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ...List.generate(
              4,
              (index) => Container(
                width: 65,
                height: 55,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color:
                        index == 0 ? Colors.orange : kSearchBoxBackgroundColor,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(math.pi),
                    child: Image.asset(shoeImagePath)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
