import 'package:flutter/material.dart';
import 'package:shoes_app/screens/item_overview_screen.dart';

import '../constants/constants.dart';
import '../constants/dummy_data.dart';
import '../widgets/categoryWidget.dart';
import '../widgets/header_widget.dart';
import '../widgets/shoe_widget.dart';
import '../widgets/title_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 6),
              const HeaderWidget(),
              const SizedBox(height: 30),
              TitleWidget(title: 'Our', subTitle: 'Products'),
              const SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 245,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search Products',
                        alignLabelWithHint: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        prefixIcon: const Icon(Icons.search),
                        filled: true,
                        fillColor: kSearchBoxBackgroundColor,
                        contentPadding: const EdgeInsets.only(top: 10),
                      ),
                    ),
                  ),
                  Material(
                    elevation: 3,
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        color: kWhite,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(Icons.filter_list_sharp, size: 25),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 40),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: [
              const SizedBox(width: 30),
              ...DummyData.CATEGORIES
                  .map((category) => CategoryWidget(category: category))
                  .toList(),
            ],
          ),
        ),
        const SizedBox(height: 40),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              const SizedBox(width: 30),
              ...DummyData.SHOES
                  .map(
                    (shoe) => GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ItemOverviewScreen(shoe: shoe))),
                      child: ShoeWidget(shoe: shoe),
                    ),
                  )
                  .toList(),
            ],
          ),
        ),
      ],
    );
  }
}
