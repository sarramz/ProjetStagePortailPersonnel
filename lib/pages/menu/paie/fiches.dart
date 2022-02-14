import 'package:flutter/material.dart';
import 'package:portail_personnel/widgets/tables.dart';
import 'package:portail_personnel/widgets/search field.dart';

class MesFiches extends StatelessWidget {
  const MesFiches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              SearchF(),
              Container(
                margin: EdgeInsets.only(left: 10.0, top: 5.0),
                child: Row(
                  children: [
                    Headings("Type", 200),
                    Headings("Voir Fiche", 100),
                  ],
                ),
              ),
              Container(
                height: 500,

                // nbadal'ha b ListView.builder kima f startUp generator
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    FichesT('Type 15263900'),
                    FichesT('Type 25263900'),
                    FichesT('Type 35263900'),
                    FichesT('Type 35263900'),
                    FichesT('Type 35263900'),
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
