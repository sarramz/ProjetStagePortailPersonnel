import 'package:flutter/material.dart';
import 'package:portail_personnel/widgets/menu_item.dart';
import 'package:portail_personnel/pages/menu/paie/fiches.dart';
import 'package:portail_personnel/pages/menu/paie/mes_prets.dart';

class Paie extends StatelessWidget {
  const Paie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MenuItem(0.45, "Fiches de Paie", Icons.receipt_long_outlined,
                      MesFiches()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MenuItem(0.45, "Mes Préts", Icons.assignment_ind_outlined,
                      MesPrets()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
