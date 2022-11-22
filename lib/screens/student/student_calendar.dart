import 'package:flutter/material.dart';
import 'package:proyecto_final/widgets/calendar.dart';

class StudentCalendar extends StatefulWidget {
  const StudentCalendar({Key? key}) : super(key: key);

  @override
  _StudentCalendarState createState() => _StudentCalendarState();
}

class _StudentCalendarState extends State<StudentCalendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendario de eventos'),
      ),
      body:const Calendar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
