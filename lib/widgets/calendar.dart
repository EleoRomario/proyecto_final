import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_final/models/event_data_source.dart';
import 'package:proyecto_final/src/provider/event_provider.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
class Calendar extends StatefulWidget {
  const Calendar({ Key? key }) : super(key: key);

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    
    final events = Provider.of<EventProvider>(context).events;
    return Scaffold(
      body: SfCalendar(
        view: CalendarView.month,
        dataSource: EventDataSource(events),
        initialDisplayDate: DateTime.now(),
      ),
    );
  }
}