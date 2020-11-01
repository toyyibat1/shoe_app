import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:shoe_app/pages/homeScreen/HomeFavorites.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      appBar: AppBar(
        elevation: 0.0,
        leading: Icon(
          Icons.sort,
          size: 35,
          color: Color(0xff363b64),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(9),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            children: <Widget>[
              HomeFavorities(),
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: buildBottomNavyBar(),
    );
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
