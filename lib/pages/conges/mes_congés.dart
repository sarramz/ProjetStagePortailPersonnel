import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'body.dart';

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
          child: MyBody(),
        )),
      ),
    );
  }
}
