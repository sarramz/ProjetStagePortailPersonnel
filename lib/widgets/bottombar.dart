import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portail_personnel/pages/menu/services/demande_s.dart';
import 'package:portail_personnel/pages/menu/services/mes_s.dart';

class MyBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyBottomBar();
  }
}

class MyBottomBar extends StatefulWidget {
  @override
  _MyBottomBar createState() => _MyBottomBar();
}

class _MyBottomBar extends State<MyBottomBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabs = [DemandeService(), MesS()];
    // TODO: implement build
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedFontSize: 13,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_outlined,
              color: Color(0xff04253A),
            ),
            label: "Demande",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.preview_outlined,
              color: Color(0xff04253A),
            ),
            label: 'Mes Services',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      // ),
    );
  }
}

// class MyBottomBar extends StatelessWidget {
//   const MyBottomBar(this.t, {Key? key}) : super(key: key);
//   final String t;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 70,
//       color: Colors.black.withOpacity(0.3),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           Mybtn(t),
//         ],
//       ),
//     );
//   }
// }
//
// class Mybtn extends StatelessWidget {
//   const Mybtn(this.t, {Key? key}) : super(key: key);
//   final String t;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(10.0),
//       margin: EdgeInsets.all(10.0),
//       decoration: BoxDecoration(
//           // border: Border.all(color: Colors.black.withOpacity(0.4), width: 2.0,style: BorderStyle.solid),
//           borderRadius: BorderRadius.circular(20.0)
//
//       ),
//       child: FlatButton(onPressed: () {}, child:Text(t,
//         style: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 20,
//             color:Colors.black.withOpacity(0.4),
//             fontFamily: 'dm'
//
//         ),)),
//     );
//   }
// }
