import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portail_personnel/widgets/appbar_d.dart';
import 'package:portail_personnel/widgets/title.dart';
import 'package:portail_personnel/widgets/actualites/actualites.dart';
import 'package:portail_personnel/widgets/stat/chart.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyAppBar(),
                MyTitle("Actualités"),
                Actualites(),
                MyTitle("Statistiques"),
                Soustitre("Centre Medical"),
                MyDonutChart(
                  title: 'chart',
                ),
                Soustitre("Congés"),
                MyDonutChart(
                  title: 'chart',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
