//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portail_personnel/pages/conges/Description%20du%20congee.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Map<DateTime, List<Description>> selectedDes;
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  TextEditingController _desController = TextEditingController();
  @override
  void initState() {
    selectedDes = {};
    super.initState();
  }

  List<Description> _getDesfromDay(DateTime date) {
    return selectedDes[date] ?? [];
  }

  @override
  void dispose() {
    _desController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(20.0),
                  child: Text(
                    'Mes Congés',
                    style: TextStyle(
                      color: Colors.indigo, //
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      fontFamily: 'dm',
                      letterSpacing: 2.0,
                    ),
                  ),
                ),
                TableCalendar(
                  focusedDay: selectedDay, //pour faire le focus
                  firstDay: DateTime(2020),
                  lastDay: DateTime(2050),
                  //pour changer le format de 2 weeks ,week,month
                  calendarFormat: format,
                  onFormatChanged: (CalendarFormat _format) {
                    setState(() {
                      format = _format;
                    });
                  },
                  startingDayOfWeek:
                      StartingDayOfWeek.sunday, // bech yebda el calendrier
                  daysOfWeekVisible: true,
                  //Day Changed
                  onDaySelected: (DateTime selectDay, DateTime focusDay) {
                    setState(() {
                      selectedDay = selectDay;
                      focusedDay = focusDay;
                    });
                    print(focusedDay);
                  },
                  selectedDayPredicate: (DateTime date) {
                    return isSameDay(selectedDay, date);
                  },

                  eventLoader: _getDesfromDay,

                  //to style the Calendar
                  calendarStyle: CalendarStyle(
                    isTodayHighlighted: true,
                    selectedDecoration: BoxDecoration(
                      color: Colors.indigo,
                      shape: BoxShape.circle,
                    ),
                    selectedTextStyle: TextStyle(color: Colors.white),
                    todayDecoration: BoxDecoration(
                        color: Colors.blueAccent,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5.0)),
                    defaultDecoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5.0)),
                    weekendDecoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
                ..._getDesfromDay(selectedDay).map(
                  (e) => ListTile(
                    title: Text(e.title),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            scrollable: true,
                            title: Text(
                              "Demande d'un Congé",
                              style: TextStyle(color: Color(0xff0b2bab)),
                            ),
                            content: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                height: 460,
                                width: 500,
                                child: RangePicker(), //calandrier dans un modal
                              ),
                            ),
                          );
                        });
                  },
                  backgroundColor: Color(0xff0b2bab), // button color
                  child: Icon(Icons.add),
                ),
              ],
            ),
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
                    child: const Text('Annuler'),
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
                    child: const Text('sauvgarder'),
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
