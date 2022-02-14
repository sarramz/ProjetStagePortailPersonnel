import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Actualites extends StatelessWidget {
  const Actualites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ListItem(
              "Réduction des redevances portuaires applicables aux navires exploités par les transporteurs maritimes dans le cadre des lignes maritimes régulières les deux ports de commerce de Gabès et de Zarzis"),
          ListItem(
              "Réactivation de l’accord bilatéral dans le domaine des ports et examen des moyens de développer l’activité"),
          ListItem(
              "Réduction des redevances portuaires applicables aux navires exploités par les transporteurs maritimes dans le cadre des lignes maritimes régulières les deux ports de commerce de Gabès et de Zarzis Réactivation de l’accord ..."),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem(this.t, {Key? key}) : super(key: key);
  final String t;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.3),
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            height: 145,
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.only(bottom: 10.0),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 2, color: Color(0xff04253A)),
              ),
            ),
            width: 250,
            child: Text(
              t,
              style: TextStyle(
                  color: Color(0xff04253A),
                  fontSize: 16.0,
                  fontFamily: 'andada'),
            ),
          ),
        ],
      ),
    );
  }
}
