import 'package:flutter/material.dart';
import 'package:portail_personnel/pages/dashboard/dashboard.dart';
import 'package:portail_personnel/pages/notif/notif.dart';
import 'package:portail_personnel/pages/menu/menu.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 1;
  final screens = [
    Dashboard(),
    Notif(),
    Menu(),
  ];
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.home, size: 30),
      Icon(Icons.add_alert, size: 30),
      Icon(Icons.list, size: 30),
    ];
    return Container(
      color: Colors.white,
      child: SafeArea(
          top: false,
          child: ClipRect(
            child: Scaffold(
              extendBody: true,
              /*
              appBar: AppBar(
                title: const Text('Hi Sarra'),
              ),*/
              body: screens[index],
              bottomNavigationBar: Theme(
                data: Theme.of(context).copyWith(
                  iconTheme: IconThemeData(color: Colors.indigo),
                ),
                child: CurvedNavigationBar(
                  key: navigationKey,
                  color: Colors.grey, //couleur de  navigation Bar
                  buttonBackgroundColor: Colors.white, // couleur de l'icon
                  backgroundColor: Colors.transparent, //arriere plan de l'icon
                  height: 60,
                  /*
              animationCurve: Curves.easeInOut,
              animationDuration: Duration(microseconds: 300),*/
                  index: index,
                  items: items,
                  onTap: (index) => setState(() => this.index = index),
                ),
              ),
            ),
          )),
    );
  }
}
