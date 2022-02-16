import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
=======

>>>>>>> b299b348133164b649d89782fbc66d0e5bc45425

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
<<<<<<< HEAD
      width: 250,
      height: 250,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/logo.png'),
      )),
    );
=======
      width: 180,
        child: Image.asset("images/logo.png"));
>>>>>>> b299b348133164b649d89782fbc66d0e5bc45425
  }
}

class Titre extends StatelessWidget {
<<<<<<< HEAD
  const Titre(this.text, {Key? key})
      : super(key: key); //hne fil constructeur tekhou el parametre
=======
  const Titre(this.text,{Key? key}) : super(key: key);
>>>>>>> b299b348133164b649d89782fbc66d0e5bc45425
  final String text;
  // Color(0xff04253A)
  @override
  Widget build(BuildContext context) {
    return Container(
<<<<<<< HEAD
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
=======
      margin: EdgeInsets.symmetric(vertical: 5.0),
        child: Text(text,style: TextStyle(color: Color(0xff04253A),fontFamily: 'dm',fontSize: 27.5),));
  }
}

class TextFieldL extends StatelessWidget {
  TextFieldL(this.text,{Key? key}) : super(key: key);
  final TextEditingController controller = TextEditingController();
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 295,
      height: 45,
      padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 15.0),
      decoration: BoxDecoration(color: Color(0xff04253A).withOpacity(0.3)),
      child: TextFormField(
        controller: controller,
        style: TextStyle(color: Color(0xff04253A)),
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: text,
          labelStyle: TextStyle(color: Color(0xff04253A),fontFamily: 'andada')
        ),
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
  const FieldRow(this.text,this.icon,{Key? key}) : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12.0,horizontal: 8.0),
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
          SizedBox(width: 15,),
          TextFieldL(text),
>>>>>>> b299b348133164b649d89782fbc66d0e5bc45425
        ],
      ),
    );
  }
}

<<<<<<< HEAD
class FingerPrint extends StatefulWidget {
  //const FingerPrint({Key? key}) : super(key: key);

  @override
  State<FingerPrint> createState() => _FingerPrintState();
}

class _FingerPrintState extends State<FingerPrint> {
  LocalAuthentication _auth = LocalAuthentication();
=======
class FingerPrint extends StatelessWidget {
  const FingerPrint({Key? key}) : super(key: key);
>>>>>>> b299b348133164b649d89782fbc66d0e5bc45425

  @override
  Widget build(BuildContext context) {
    return Container(
<<<<<<< HEAD
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
=======
      child: Icon(
        Icons.fingerprint,
        color:Color(0xff04253A),
        size: 60,
      ),

    );
  }
}

>>>>>>> b299b348133164b649d89782fbc66d0e5bc45425
