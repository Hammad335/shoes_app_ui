import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../screens/home_screen.dart';
import 'cart_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final _screens = const <Widget>[
    HomeScreen(),
    HomeScreen(),
    CartScreen(),
    HomeScreen(),
  ];
  Widget _activeScreen = HomeScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kScaffoldColor,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 6, left: 6, right: 6),
        child: ConvexAppBar(
          color: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0,
          activeColor: Colors.orange,
          height: 45,
          curveSize: 100,
          curve: Curves.easeIn,
          // style: TabStyle.reactCircle,
          items: const [
            TabItem(
                icon: Icons.home_outlined,
                activeIcon: Icon(Icons.home_outlined, size: 30)),
            TabItem(
                icon: Icons.search, activeIcon: Icon(Icons.search, size: 30)),
            TabItem(
                icon: Icons.shopping_cart_outlined,
                activeIcon: Icon(Icons.shopping_cart_outlined, size: 30)),
            TabItem(
                icon: Icons.favorite_border,
                activeIcon: Icon(
                  Icons.favorite_border,
                  size: 30,
                )),
          ],
          top: -14,
          onTap: (int i) => setState(() {
            _activeScreen = _screens[i];
          }),
        ),
      ),
      body: SafeArea(
        child: _activeScreen,
      ),
    );
  }
}
