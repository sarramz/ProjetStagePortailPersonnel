import 'package:flutter/material.dart';
import 'package:portail_personnel/widgets/tables.dart';
import 'package:portail_personnel/widgets/search field.dart';

class MesPrets extends StatelessWidget {
  const MesPrets({Key? key}) : super(key: key);

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
                    Headings("Prêts", 200),
                    Headings("Details", 100),
                  ],
                ),
              ),
              Container(
                height: 500,

                // nbadal'ha b ListView.builder kima f startUp generator
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    PretsT(
                        '15263900', '07/08/2021', '1.153.269 dt', '25.368 dt'),
                    PretsT(
                        '10003900', '07/08/2021', '1.100.222 dt', '250.368 dt'),
                    PretsT('25863900', '07/08/2021', '5.153.269 dt',
                        '1.325.368 dt'),
                    PretsT('36983900', '07/08/2021', '953.269 dt', '5.368 dt'),
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
