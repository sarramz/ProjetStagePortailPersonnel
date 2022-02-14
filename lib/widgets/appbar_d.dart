import 'package:flutter/material.dart';
import 'package:portail_personnel/pages/login/login.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(10.0),
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.black.withOpacity(0.3)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 60,
            //   child: Image.asset("images/hello.png")
          ),
          HelloText("Mouadh allani"),
          Logout(),
        ],
      ),
    );
  }
}

class HelloText extends StatelessWidget {
  const HelloText(this.name, {Key? key}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "Bonjour",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'andada',
            fontSize: 16,
          ),
        ),
        Container(
          child: Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'andada',
              fontSize: 16,
            ),
          ),
        ),
      ],
    ));
  }
}

class Logout extends StatelessWidget {
  const Logout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => LoginBody()));
        },
        child: Container(
          width: 40,
          height: 35,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2.5,
              blurRadius: 2,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ], borderRadius: BorderRadius.circular(50)),
          child: Icon(
            Icons.power_settings_new_outlined,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
    );
  }
}
