import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notif extends StatelessWidget {
  const Notif({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white70,
      body: SafeArea(
        child: Container(
            child: Column(
          children: [
            NotifItem(
                "Votre attestation est préte!", Icons.business_center_outlined),
            NotifItem(
                "Approbation deVotre demande de congés du 10/09/2021 jusqu'à 17/09/2021",
                Icons.event_outlined),
          ],
        )),
      ),
    );
  }
}

class NotifItem extends StatelessWidget {
  const NotifItem(this.s, this.icon, {Key? key}) : super(key: key);
  final String s;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 2, color: Colors.indigo),
        ),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Icon(
          icon,
          color: Colors.indigo,
          size: 28,
        ),
        Container(
          width: 320,
          child: Text(
            s,
            style: TextStyle(
                color: Color(0xff04253A), fontFamily: 'andada', fontSize: 18),
          ),
        ),
      ]),
    );
  }
}
