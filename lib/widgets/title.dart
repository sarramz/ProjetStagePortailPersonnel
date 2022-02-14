import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  const MyTitle(this.t, {Key? key}) : super(key: key);
  final String t;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15.0,left: 30.0,right: 10.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text( t,
              style: TextStyle(
                  color:  Color(0xff04253A),
                  fontFamily: 'dm',
                  fontSize: 22
              ),
            ),
            Container(
              child: TextButton(
                child: Text('voir plus', style: TextStyle(fontSize: 13.0),),
                onPressed: () {},
              ),
            ),
          ]
      ),





    );
  }
}

class Soustitre extends StatelessWidget {
  const Soustitre(this.t,{Key? key}) : super(key: key);
  final String t;

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(left: 30.0),
      child: Text( t,
          style: TextStyle(
              color:  Color(0xff04253A),
              fontFamily: 'dm',
              fontSize: 16
          ),
      ),
    );;
  }
}

