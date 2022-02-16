//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portail_personnel/pages/conges/Description%20du%20congee.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';

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
                FloatingActionButton.extended(
                  onPressed: () => showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text("Ajouter une description"),
                            content: TextFormField(
                              controller: _desController,
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  _desController.clear();
                                },
                                child: Text("Cancel"),
                              ),
                              TextButton(
                                onPressed: () {
                                  if (_desController.text.isEmpty) {
                                  } else {
                                    if (selectedDes[selectedDay] != null) {
                                      selectedDes[selectedDay]?.add(
                                        Description(title: _desController.text),
                                      );
                                    } else {
                                      selectedDes[selectedDay] = [
                                        Description(title: _desController.text)
                                      ];
                                    }
                                    Navigator.pop(context);
                                    _desController.clear();
                                    setState(() {});
                                    return;
                                  }
                                },
                                child: Text("ok"),
                              ),
                            ],
                          )),
                  label: Text("Add Description"),
                  icon: Icon(Icons.add),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
