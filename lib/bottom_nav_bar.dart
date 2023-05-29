import 'package:flutter/material.dart';
import 'package:untitled33/account_page.dart';
import 'package:untitled33/home_page.dart';
import 'package:untitled33/search_page.dart';

class BottomNavBar extends StatefulWidget {
  static const String id = "bzsfvadfv";

  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (indexjon) {
          setState(() {
            _currentIndex = indexjon;
          });
        },
        children: const [
          HomePage(),
          SearchPage(),
          AccountPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
            ),
            label: "Account",
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.red,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            _pageController.animateToPage(_currentIndex,
                duration: Duration(
                  milliseconds: 200,
                ),
                curve: Curves.easeIn);
          });
        },
      ),
    );
  }
}
