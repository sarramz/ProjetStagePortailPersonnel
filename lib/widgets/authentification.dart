import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

class TextFieldL extends StatelessWidget {
  TextFieldL(this.text, {Key? key}) : super(key: key);
  final TextEditingController controller = TextEditingController();
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 295,
      height: 45,
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
      decoration: BoxDecoration(color: Color(0xff04253A).withOpacity(0.3)),
      child: TextFormField(
        controller: controller,
        style: TextStyle(color: Color(0xff04253A)),
        decoration: InputDecoration(
            border: InputBorder.none,
            labelText: text,
            labelStyle:
                TextStyle(color: Color(0xff04253A), fontFamily: 'andada')),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
      ),
    );
  }
}

class FieldRow extends StatelessWidget {
  const FieldRow(this.text, this.icon, {Key? key}) : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
      child: Row(
        children: [
          Container(
            width: 25,
            padding: EdgeInsets.symmetric(horizontal: 0.0),
            child: Icon(
              icon,
              size: 30,
              color: Color(0xff04253A),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          TextFieldL(text),
        ],
      ),
    );
  }
}

class FingerPrint extends StatefulWidget {
  const FingerPrint({Key? key}) : super(key: key);

  @override
  _FingerPrintState createState() => _FingerPrintState();
}

class _FingerPrintState extends State<FingerPrint> {
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
