import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portail_personnel/pages/conges/HomePageConges.dart';
import 'body.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';

class MyHolidays extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      home: Scaffold(
        body: SafeArea(
            child: Container(
          // child: MyBody(),
          child: HomePage(),
        )),
      ),
    );
  }
}
