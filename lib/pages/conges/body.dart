import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

//items de listview
class Item extends StatelessWidget {
  Item(this.title);
  final Color primaryColor = Colors.black;
  final String title;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 120,
      child: Text(
        title,
        style:
            TextStyle(color: primaryColor, fontSize: 15, fontFamily: 'andada'),
      ),
    );
  }
}

//titre de listview
class Title extends StatelessWidget {
  Title(this.title);
  final Color primaryColor = Colors.indigo;
  final String title;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 180,
      child: Text(
        title,
        style:
            TextStyle(color: primaryColor, fontSize: 20, fontFamily: 'andada'),
      ),
    );
  }
}

/*
//listview Titre
class MyRow extends StatelessWidget {
  MyRow(this.list_item, this.solde_item);
  final Item list_item;
  final Item solde_item;
  final Color primaryColor = Color(0xff111c46);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.only(top: 25.0, left: 10.0, right: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          list_item,
          SizedBox(
            width: 80,
          ),
          solde_item,
        ],
      ),
    );
  }
}
*/
//Calendar
class MyBody extends StatelessWidget {
  final Color primaryColor = Colors.indigo;
  final Color secondaryColor = Color(0xffffffff);
  final Color thirdColor = Color(0xff111c46);
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
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(20.0),
              child: Text(
                'Mes Congés',
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  fontFamily: 'dm',
                  letterSpacing: 2.0,
                ),
              ),
            ),
            // Calendar en bas
            MyHomePage(title: 'Calender'),
/*
            // Array
            Column(
              children: [
                Container(
                    margin: const EdgeInsets.only(
                        top: 30.0, bottom: 5.0, left: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Title('Liste des Congés'),
                        Title('Soldes De Congé')
                      ],
                    )),
                Container(
                    margin: const EdgeInsets.only(
                        top: 30.0, bottom: 10.0, left: 10.0, right: 10.0),
                    child: Column(
                      children: [
                        MyRow(
                            Item('Liste des Congés'),
                            Item(
                              'Soldes De Congé',
                            )),
                        Container(
                          margin:
                              const EdgeInsets.only(left: 23.0, right: 25.0),
                          child: Divider(
                            color: thirdColor,
                          ),
                        ),
                        MyRow(
                            Item('Liste des Congés'),
                            Item(
                              'Soldes De Congé',
                            )),
                        Container(
                          margin:
                              const EdgeInsets.only(left: 23.0, right: 25.0),
                          child: Divider(
                            color: thirdColor,
                          ),
                        ),
                        MyRow(
                            Item('Liste des Congés'),
                            Item(
                              'Soldes De Congé',
                            )),
                        Container(
                          margin:
                              const EdgeInsets.only(left: 25.0, right: 25.0),
                          child: Divider(
                            color: thirdColor,
                          ),
                        ),
                      ],

                ),

              ],
            )
            */
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
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
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 460,
                      width: 500,
                      child: RangePicker(),
                    ),
                  ),
                );
              });
        },
        backgroundColor: thirdColor,
        child: Icon(Icons.add),
      ),
    );
  }
}

//Calendar
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Opacity(
        opacity: 0.9,
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          margin: EdgeInsets.all(15),
          child: TableCalendar(
            focusedDay: DateTime.now(),
            firstDay: DateTime(2000),
            lastDay: DateTime(2050),
            calendarStyle: CalendarStyle(),
          ),
        ),
      ),
    );
  }
}

class RangePicker extends StatefulWidget {
  @override
  _RangePickerState createState() => _RangePickerState();
}

class _RangePickerState extends State<RangePicker> {
  DateRangePickerController _date = DateRangePickerController();
  final TextEditingController controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      key: _formKey,
      child: Container(
        child: Column(children: [
          Container(
            padding: EdgeInsets.only(bottom: 20),
            child: TextFormField(
              controller: controller,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              style: TextStyle(color: Color(0xff111c46)),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 8),
                  labelText: "Description",
                  labelStyle: TextStyle(
                      color: Color(0xff111c46),
                      fontSize: 17,
                      decoration: TextDecoration.underline),
                  border: InputBorder.none),
            ),
          ),
          SfDateRangePicker(
            view: DateRangePickerView.month,
            monthViewSettings:
                DateRangePickerMonthViewSettings(firstDayOfWeek: 1),
            selectionMode: DateRangePickerSelectionMode.range,
            selectionColor: Colors.blue,
            onSelectionChanged: _onSelection,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, top: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context, true);
                    },
                    child: const Text('Cancel'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, top: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      // Validate returns true if the form is valid, or false otherwise.
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        print(controller.text);
                        Navigator.pop(context, true);
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text(
                                  'Votre Demande de Congé est enregistrée')),
                        );
                      }
                    },
                    child: const Text('Submit'),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }

  void _onSelection(DateRangePickerSelectionChangedArgs range) {
    print(range.value);
  }
}
