import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem(this.x, this.text, this.icon, this.navigation, {Key? key})
      : super(key: key);
  final String text;
  final IconData icon;
  final Widget navigation;
  final double x;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 160,
      color: Color(0xff04253A).withOpacity(x),
      child: FlatButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => navigation));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(15.0),
              child: Icon(
                icon,
                size: 35,
                color: Colors.indigo,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 160,
              child: Text(text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'andada',
                    letterSpacing: 1,
                  ),
                  textAlign: TextAlign.center),
            )
          ],
        ),
      ),
    );
  }
}
