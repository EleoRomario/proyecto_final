import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_final/models/event.dart';
import 'package:proyecto_final/src/provider/event_provider.dart';
import 'package:proyecto_final/widgets/calendar.dart';

class TeacherCalendar extends StatefulWidget {
  const TeacherCalendar({ Key? key }) : super(key: key);

  @override
  _TeacherCalendarState createState() => _TeacherCalendarState();
}

class _TeacherCalendarState extends State<TeacherCalendar> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendario de eventos'),
      ),
      body: const Calendar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/teacher/new_event');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}