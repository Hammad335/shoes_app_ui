import 'package:flutter/material.dart';
import 'package:shoes_app/constants/constants.dart';
import 'package:shoes_app/widgets/shoe_overview_widget.dart';
import '../models/shoe.dart';
import '../widgets/price_tag_widget.dart';
import '../constants/utils.dart';

class ItemOverviewScreen extends StatelessWidget {
  final Shoe shoe;
  ItemOverviewScreen({required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          width: 38,
                          height: 38,
                          decoration: BoxDecoration(
                            // color: ,
                            border: Border.all(
                                color: kSearchBoxBackgroundColor, width: 2),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Icon(Icons.arrow_back_ios_new, size: 16),
                        ),
                      ),
                      Material(
                        elevation: 1,
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          width: 38,
                          height: 38,
                          decoration: BoxDecoration(
                            color: kWhite,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                              shoe.isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              size: 18,
                              color:
                                  shoe.isFavorite ? Colors.red : Colors.black),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  ShoeOverviewWidget(shoeImagePath: shoe.imagePath),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Container(
                        width: 40,
                        height: 5,
                        margin: const EdgeInsets.only(top: 8, bottom: 20),
                        decoration: BoxDecoration(
                          color: kSearchBoxBackgroundColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            shoe.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          PriceTagWidget(price: shoe.price),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Utils.getRatings(),
                      const SizedBox(height: 8),
                      const SizedBox(
                        width: double.infinity,
                        height: 40,
                        child: Text(
                          'Available Sizes',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          4,
                          (index) => Container(
                            width: 60,
                            height: 40,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: index == 1 ? Colors.orange : null,
                              borderRadius: BorderRadius.circular(10),
                              border: index != 1
                                  ? Border.all(
                                      color: kSearchBoxBackgroundColor,
                                      width: 2)
                                  : null,
                            ),
                            child: Text(
                              'PK ${index + 5}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: index == 1 ? kWhite : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
