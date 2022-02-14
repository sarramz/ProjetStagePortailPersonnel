import 'package:flutter/material.dart';
import 'package:portail_personnel/pages/conges/mes_congés.dart';
import 'package:portail_personnel/widgets/bottombar.dart';
import 'package:portail_personnel/pages/menu/assurances/assurances.dart';
import 'package:portail_personnel/widgets/menu_item.dart';
import 'package:portail_personnel/pages/menu/paie/paie.dart';
import 'package:portail_personnel/pages/menu/centre_medical/rv.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MenuItem(0.45, "Mes Congés", Icons.date_range_outlined,
                      MyHolidays()),
                  MenuItem(0.45, "Services Administratifs",
                      Icons.business_center_outlined, MyBar()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MenuItem(0.45, "Assurances", Icons.favorite_border_outlined,
                      Assurances()),
                  MenuItem(0.45, "Amical", Icons.flight, Container()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MenuItem(0.45, "Paie", Icons.local_atm, Paie()),
                  MenuItem(0.45, "Centre Medical",
                      Icons.medical_services_outlined, RV()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
