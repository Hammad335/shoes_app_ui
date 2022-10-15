import 'package:flutter/material.dart';

class PriceTagWidget extends StatelessWidget {
  final double price;
  PriceTagWidget({required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '\$',
          style: TextStyle(
            fontSize: 12,
            color: Colors.orange,
            fontFamily: 'Farah',
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 2),
        Text(
          price.toStringAsFixed(1),
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            letterSpacing: 1,
          ),
        ),
      ],
    );
  }
}
