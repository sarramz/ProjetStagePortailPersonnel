import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portail_personnel/widgets/form_rv.dart';

class RV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        // child: SingleChildScrollView(
        child:MyForm() ,
        // )
      ),
    );

  }
}