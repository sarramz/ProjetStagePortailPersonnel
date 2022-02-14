import 'package:flutter/material.dart';

class DemandeService extends StatelessWidget {
  const DemandeService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            BuildRow("s1.jpg", "Attestation de Travail", "s2.jpg",
                "Attestation de Travail "),
          ],
        ),
      ),
    );
  }
}

class BuildService extends StatelessWidget {
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

  BuildService(this.imgName, this.service);
  final String imgName;
  final String service;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 150,
          height: 150,
          //   child: Image.asset('images/' + imgName),
        ),
        new Container(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0),
          child: OutlinedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      scrollable: true,
                      title: Text(
                        "Demande d'une Attestation de Travail",
                        style: TextStyle(color: Color(0xff111c46)),
                      ),
                      content: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Form(
                          child: Column(
                            children: <Widget>[
                              _buildTextField('...'),
                              _buildTextField('...'),
                              _buildTextField('...'),
                            ],
                          ),
                        ),
                      ),
                      actions: [
                        RaisedButton(
                            color: Color(0xff008037),
                            //#008037
                            child: Text(
                              "Submit",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              // your code
                            })
                      ],
                    );
                  });
            },
            child: Text(
              service,
              style: TextStyle(
                  color: Color(0xFF111C46), fontSize: 13, fontFamily: 'andada'),
            ),
            style: OutlinedButton.styleFrom(
              side: BorderSide(width: 1.0, color: Color(0xFF111C46)),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            ),
          ),
        )
      ],
    );
  }
}

class BuildRow extends StatelessWidget {
  const BuildRow(this.imgName1, this.service1, this.imgName2, this.service2,
      {Key? key})
      : super(key: key);

  final String imgName1;
  final String service1;
  final String imgName2;
  final String service2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BuildService(imgName1, service1),
        BuildService(imgName2, service2),
      ],
    );
  }
}
