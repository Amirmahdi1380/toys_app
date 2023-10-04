import 'package:flutter/material.dart';
import 'package:toys/config/config.dart';
import 'package:toys/presentation/screens/cart_screen.dart';
import 'package:toys/presentation/screens/category_screen.dart';
import 'package:toys/presentation/screens/home_screen.dart';
import 'package:toys/presentation/screens/more_screen.dart';
import 'package:toys/presentation/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const CategoryScreen(),
    const CartScreen(),
    const ProfileScreen(),
    const MoreScreen(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Stack(
          children: [
            _pages[_currentIndex],
            Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  transform: Matrix4.translationValues(0, MediaQuery.of(context).size.height - 72, .0),
                  margin: const EdgeInsets.symmetric(horizontal: mediumDistance),
                  child: ClipRRect(
                    borderRadius:
                    const BorderRadius.all(Radius.circular(largeRadius)),
                    child: Container(
                      color: Color(0xfffdfdfd),
                      child: BottomNavigationBar(
                        type: BottomNavigationBarType.fixed,
                        currentIndex: _currentIndex,
                        showSelectedLabels: false,
                        elevation: 0,
                        showUnselectedLabels: false,
                        backgroundColor: Colors.transparent,
                        onTap: _onTabTapped,
                        items: [
                          BottomNavigationBarItem(
                            icon: Icon(
                              Icons.home,
                              color: setColor(0),
                            ),
                            label: '',
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(
                              Icons.category,
                              color: setColor(1),
                            ),
                            label: '',
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(
                              Icons.shopping_cart,
                              color: setColor(2),
                            ),
                            label: '',
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(
                              Icons.person,
                              color: setColor(3),
                            ),
                            label: '',
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(
                              Icons.more_horiz,
                              color: setColor(4),
                            ),
                            label: '',
                          ),
                        ],
                      ),
                    ),
                  ),
                ))
          ],
        ),);
  }

  Color setColor(int index) {
    return (_currentIndex == index) ? Colors.black : Colors.grey;
  }
}
