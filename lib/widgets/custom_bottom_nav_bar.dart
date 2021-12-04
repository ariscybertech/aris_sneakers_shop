import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar(
      {Key key, this.selectedPageIndex, this.onIconTap})
      : super(key: key);
  final int selectedPageIndex;
  final Function onIconTap;
  final double _unselectedIconsize = 25;
  final double _selectedIconSize = 22;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _bottomNavItem(0, 'Home', Icons.home, Icons.home_outlined),
          _bottomNavItem(1, 'Search', Icons.search, Icons.search),
          _bottomNavItem(2, 'Shop', Icons.local_mall, Icons.local_mall_outlined),
          _bottomNavItem(3, 'Profile', Icons.account_circle, Icons.account_circle_outlined),
        ],
      ),
    );
  }

  _bottomNavItem(
      int index, String label, IconData selectedIcon, IconData unselectedIcon) {
    return GestureDetector(
        child: selectedPageIndex == index
            ? Container(
                color: Colors.amber,
              )
            : Icon(
                unselectedIcon,
                size: _unselectedIconsize,
              ));
  }
}
