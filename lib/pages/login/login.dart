import 'package:flutter/material.dart';
import 'package:portail_personnel/widgets/authentification.dart';
import 'package:portail_personnel/widgets/btn.dart';
import 'package:local_auth/local_auth.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.only(left: 30.0, right: 30.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Logo(), // go to authentification widget1
                SizedBox(
                  height: 20,
                ),
                Titre("Portail Personnel"), // authentification :fonction titre

                Input(), // auth pour les zones de textes
                SizedBox(
                  height: 20,
                ),
                BtnConnex(), //vers widgets/btn.dart
                SizedBox(
                  height: 40,
                ),
                FingerPrint(), //widget /auth...
              ],
            ),
          ),
        ),
      ),
    );
  }
}
