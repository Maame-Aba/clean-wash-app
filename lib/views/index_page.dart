import 'package:clean_wash/views/chart_page.dart';
import 'package:clean_wash/views/chat_page.dart';
import 'package:clean_wash/views/homeview.dart';
import 'package:clean_wash/views/orders.dart';
import 'package:flutter/material.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  
  int _currentIndex = 0;
  final List<Widget> _pages = const [
    HomePage(),
    OrderPage(),
    ChatPage(),
    ChartPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: DotNavigationBar(
            margin: EdgeInsets.only(left: 10, right: 10),
            currentIndex: _currentIndex,
            dotIndicatorColor: Colors.white,
            unselectedItemColor: Colors.grey[300],
            // enableFloatingNavBar: false,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              /// Home
              DotNavigationBarItem(
                icon: Icon(Icons.home),
                selectedColor: Colors.blue,
              ),

              /// Likes
              DotNavigationBarItem(
                icon: Icon(Icons.description),
                selectedColor: Colors.blue,
              ),

              /// Search
              DotNavigationBarItem(
                icon: Icon(Icons.chat),
                selectedColor: Colors.blue,
              ),

              /// Profile
              DotNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                selectedColor: Colors.blue,
              ),
            ],
          ),
        ));
  }
}
