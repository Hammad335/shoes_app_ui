import 'package:flutter/material.dart';
import 'package:shoes_app/constants/constants.dart';
import 'package:shoes_app/constants/dummy_data.dart';

import '../widgets/cart_item_widget.dart';
import '../widgets/header_widget.dart';
import '../widgets/title_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 6),
          const HeaderWidget(),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TitleWidget(title: 'Shopping', subTitle: 'Cart'),
              Image.asset(
                'assets/images/delete_image.png',
                width: 35,
                height: 35,
              ),
            ],
          ),
          const SizedBox(height: 60),
          SizedBox(
            height: 360,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(top: 20),
              itemCount: DummyData.SHOES.length,
              itemBuilder: (context, index) =>
                  CartItemWidget(cartItem: DummyData.SHOES[index]),
            ),
          ),
          const SizedBox(height: 4),
          Divider(
            height: 1,
            thickness: 2,
            color: kSearchBoxBackgroundColor,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${DummyData.SHOES.length.toString()} items',
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
              const Text(
                '\$540.00',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              // fixedSize: MaterialStateProperty.all(const Size(190, 40)),
              backgroundColor: MaterialStateProperty.all(Colors.orange),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              )),
            ),
            child: const Text(
              'Next',
              style: TextStyle(
                letterSpacing: 1,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
