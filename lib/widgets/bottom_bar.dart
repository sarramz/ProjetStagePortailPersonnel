import 'package:flutter/material.dart';
import 'package:portail_personnel/pages/dashboard/dashboard.dart';
import 'package:portail_personnel/pages/notif/notif.dart';
import 'package:portail_personnel/pages/menu/menu.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedItem = 1;


  @override
  Widget build(BuildContext context) {
    final tabs = [
      Notif(),
      Dashboard(),
      Menu()
    ];
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        iconList: [

          Icons.notifications_outlined,
          Icons.home_outlined,
          Icons.menu_outlined,
          // Icons.logout_outlined,

        ],
        onChange: (val) {
          setState(() {
            _selectedItem = val;
          });
        },
        defaultSelectedIndex: 1,
      ),
      body:tabs [_selectedItem],
    );
  }
}

class CustomBottomNavigationBar extends StatefulWidget {
  final int defaultSelectedIndex;
  final Function(int) onChange;
  final List<IconData> iconList;

  CustomBottomNavigationBar(
      {this.defaultSelectedIndex = 0,
        required this.iconList,
        required this.onChange});

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  List<IconData> _iconList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _selectedIndex = widget.defaultSelectedIndex;
    _iconList = widget.iconList;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _navBarItemList = [];

    for (var i = 0; i < _iconList.length; i++) {
      _navBarItemList.add(buildNavBarItem(_iconList[i], i));
    }

    return Container(
      color: Colors.black.withOpacity(0.3),
      child: Row(
        children: _navBarItemList,
      ),
    );
  }

  Widget buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        widget.onChange(index);
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width / _iconList.length,
        decoration: index == _selectedIndex
            ? BoxDecoration(
            border:
            Border(
              bottom: BorderSide(width: 4, color: Colors.white),
            ),
            gradient: LinearGradient(colors: [
              Colors.white.withOpacity(0.3),
              Colors.white.withOpacity(0.015),
            ], begin: Alignment.bottomCenter, end: Alignment.topCenter)
          // color: index == _selectedItemIndex ? Colors.green : Colors.white,
        )
            : BoxDecoration(),
        child:
        Icon(
          icon,
          size:index == _selectedIndex ? 30 : 25,
          color: index == _selectedIndex ? Colors.white : Colors.black.withOpacity(0.3),
        ),
        // ),
      ),
    );
  }
}