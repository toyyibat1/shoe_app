import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

import '../homeScreen/HomeFavorites.dart';
import '../detailsScreen/body.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int _currentIndex = 0;
  PageController _pageController;
  Color color = Colors.pink[100];
  Color colorblack = Colors.black;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          elevation: 0,
          // leading: IconButton(
          //   icon: Icon(Icons.arrow_back,
          //   color: Colors.black,),
          //    onPressed: (){}),
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Body(),
        bottomNavigationBar: buildBottomNavyBar());
  }

  BottomNavyBar buildBottomNavyBar() {
    return BottomNavyBar(
      selectedIndex: _currentIndex,
      onItemSelected: (index) {
        setState(() => _currentIndex = index);
        _pageController.jumpToPage(index);
      },
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
            title: Text(
              'Home',
              style: TextStyle(color: colorblack),
            ),
            icon: Icon(Icons.home, color: colorblack),
            activeColor: Colors.pink[50]),
        BottomNavyBarItem(
            title: Text('Search'),
            icon: Icon(Icons.search, color: colorblack),
            activeColor: Colors.pink[50]),
        BottomNavyBarItem(
            title: Text('Alarm'),
            icon: Icon(Icons.add_alert, color: colorblack),
            activeColor: Colors.pink[50]),
        BottomNavyBarItem(
            title: Text('Favorite'),
            icon: Icon(Icons.favorite, color: colorblack),
            activeColor: Colors.pink[50]),
        BottomNavyBarItem(
            title: Text("Cart"),
            icon: Icon(Icons.shopping_cart, color: colorblack),
            activeColor: Colors.pink[50])
      ],
    );
  }
}

