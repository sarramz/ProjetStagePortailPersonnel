import 'package:flutter/material.dart';

class MyPop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyAppState(),
    );
  }
}

class MyAppState extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyAppState> {
  _buildTextField(String labelText) {
    // TextEditingController controller,
    return Container(
      margin: const EdgeInsets.only(
          top: 20.0, left: 10.0, right: 10.0, bottom: 10.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            //
            color: Color(0xff111c46),
            width: 2.0,
          ),
        ),
      ),
      child: TextField(
        // controller: controller,
        style: TextStyle(color: Color(0xff111c46)),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 8),
            labelText: labelText,
            labelStyle:
                TextStyle(color: Color(0xff111c46), fontFamily: 'andada'),
            border: InputBorder.none),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          //child: Text("Open Popup"),
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    scrollable: true,
                    title: Text(
                      "Demande d'un Congé",
                      style: TextStyle(color: Color(0xff111c46)),
                    ),
                    content: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Form(
                        child: Column(
                          children: <Widget>[
                            _buildTextField('Date Début'),
                            _buildTextField('Date Fin'),
                            _buildTextField('Description'),
                          ],
                        ),
                      ),
                    ),
                    /*   actions: [
                      RaisedButton(
                          color: Color(0xff008037),
                          //#008037
                          child: Text(
                            "Submit",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {})
                    ],*/
                  );
                });
          },
        ),
      ),
    );
  }
}
