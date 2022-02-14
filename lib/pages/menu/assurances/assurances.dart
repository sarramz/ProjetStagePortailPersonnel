import 'package:flutter/material.dart';
import 'package:portail_personnel/widgets/tables.dart';
import 'package:portail_personnel/widgets/search field.dart';

class Assurances extends StatelessWidget {
  const Assurances({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            SearchF(),
            Row(
              children: [
                Headings("Num Bultein", 120),
                Headings("Statu", 70),
                Headings("Montant", 100),
              ],
            ),
            AssurancesT('15263900', Icons.task_alt_outlined, '1.225.800 dt',
                Colors.green),
            AssurancesT(
                '15263900', Icons.cancel_outlined, '1.225.800 dt', Colors.red),
            AssurancesT('15263900', Icons.pending_outlined, '1.225.800 dt',
                Color(0xffe8c302)),
            AssurancesT('15263900', Icons.task_alt_outlined, '1.225.800 dt',
                Colors.green),
          ],
        ),
      )),
    );
  }
}
