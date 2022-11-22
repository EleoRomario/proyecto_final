import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_final/models/event_data_source.dart';
import 'package:proyecto_final/screens/teacher/teacher_event_detail.dart';
import 'package:proyecto_final/src/provider/event_provider.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Tasks extends StatefulWidget {
  const Tasks({Key? key}) : super(key: key);

  @override
  _TasksState createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<EventProvider>(context);

    final selectedEvents = provider.eventsOfSelectedDate;

    if (selectedEvents.isEmpty) {
      return const Center(
        child: Text('No hay eventos para esta fecha'),
      );
    }
    return SfCalendar(
      view: CalendarView.timelineDay,
      dataSource: EventDataSource(provider.events),
      initialDisplayDate: provider.selectedDate,
      onTap: (details) {
        if (details.appointments == null) return;

        final event = details.appointments!.first;

        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return TeacherEventDetail(event: event);
        }));
      },
    );
  }
}
