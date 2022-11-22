import 'package:flutter/animation.dart';
import 'package:proyecto_final/models/event.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class EventDataSource extends CalendarDataSource {
  EventDataSource(List<Event> appointments) {
    this.appointments = appointments;
  }

  Event gtEvent(int index) => appointments![index] as Event;

  @override
  DateTime getStartTime(int index) {
    return gtEvent(index).fechaDe;
  }

  @override
  DateTime getEndTime(int index) {
    return gtEvent(index).fechaA;
  }

  @override
  String getSubject(int index) {
    return gtEvent(index).titulo;
  }

  @override
  Color getColor(int index) {
    return gtEvent(index).backgroundColor;
  }

  @override
  bool isAllDay(int index) {
    return gtEvent(index).isAllDay;
  }

  @override
  String getNotes(int index) {
    return gtEvent(index).descripcion;
  }

}
