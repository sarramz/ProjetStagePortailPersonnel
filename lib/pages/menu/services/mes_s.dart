import 'package:flutter/material.dart';
import 'package:portail_personnel/widgets/tables.dart';
import 'package:portail_personnel/widgets/search field.dart';

class MesS extends StatelessWidget {
  const MesS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            SearchF(),
            Row(
              children: [
                Headings("Demande", 200),
                Headings("Statu", 100),
              ],
            ),
            Container(
              height: 300,

              // nbadal'ha b ListView.builder kima f startUp generator
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  ServicesT('Attestation de Travail', Icons.task_alt_outlined,
                      Colors.green),
                  ServicesT('Attestation de Travail', Icons.cancel_outlined,
                      Colors.red),
                  ServicesT('Attestation de Travail', Icons.pending_outlined,
                      Color(0xffe8c302)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
