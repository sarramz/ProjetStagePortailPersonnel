import 'package:flutter/material.dart';
import 'package:portail_personnel/widgets/bottom_bar.dart';

class BtnConnex extends StatelessWidget {
  //const BouttonCon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: RaisedButton(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 24.0),
            child: Text(
              "Connexion",
              style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      BottomBar()), //vers widgets/bottom_bar.dart
            );
          },
        ),
      ),
    );
  }
}
