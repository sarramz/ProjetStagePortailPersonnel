import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/logo.png'),
      )),
    );
  }
}

class Titre extends StatelessWidget {
  const Titre(this.text, {Key? key})
      : super(key: key); //hne fil constructeur tekhou el parametre
  final String text;
  // Color(0xff04253A)
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 5.0),
        child: Text(
          text,
          style: TextStyle(color: Colors.indigo, fontSize: 30),
        ));
  }
}

class Input extends StatelessWidget {
  //const Input({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(143, 148, 251, .2),
                      blurRadius: 20.0,
                      offset: Offset(0, 10))
                ]),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(9.0),
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey))),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Identifiant Unique",
                        icon: Icon(Icons.person),
                        hintStyle: TextStyle(color: Colors.grey[400])),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Mot de passe",
                        icon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.visibility), //
                        hintStyle: TextStyle(color: Colors.grey[400])),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FingerPrint extends StatefulWidget {
  //const FingerPrint({Key? key}) : super(key: key);

  @override
  State<FingerPrint> createState() => _FingerPrintState();
}

class _FingerPrintState extends State<FingerPrint> {
  LocalAuthentication _auth = LocalAuthentication();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: Icon(
          Icons.fingerprint,
          color: Color(0xff04253A),
          size: 70,
        ),
        onPressed: () {},
      ),
    );
  }
}
