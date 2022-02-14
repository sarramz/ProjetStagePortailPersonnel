import 'package:flutter/material.dart';
import 'package:portail_personnel/widgets/tables.dart';
import 'package:portail_personnel/widgets/search field.dart';

class MesRv extends StatelessWidget {
  const MesRv({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              SearchF(),
              Container(
                child: Row(
                  children: [
                    Headings("Specialité", 110),
                    Headings("Medecin", 110),
                    Headings("Statu", 60),
                  ],
                ),
              ),
              Container(
                height: 500,

                // nbadal'ha b ListView.builder kima f startUp generator
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    RVT('Medecin interne', 'Abdallah Maya', '07/08/2021',
                        Color(0xff008037)),
                    RVT('Medecin interne', 'Abdallah Maya', '05/08/2021',
                        Color(0xffb20e0e)),
                    RVT('Medecin interne', 'Abdallah Maya', '27/08/2021',
                        Color(0xff04253A)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
