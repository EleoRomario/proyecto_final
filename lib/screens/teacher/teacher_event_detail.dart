import 'package:flutter/material.dart';
import 'package:proyecto_final/models/event.dart';

class TeacherEventDetail extends StatelessWidget {
  final Event event;
  const TeacherEventDetail({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(event.titulo),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          buildDateTime(event),
          const SizedBox(height: 12),
          Text(event.titulo),
          const SizedBox(height: 12),
          Text(event.descripcion),
        ],
      ),
    );
  }

  Widget buildDateTime(Event event) {
    return Column(
      children: [
        buildDate(event.isAllDay ? 'All Day' : 'De', event.fechaDe),
        if (!event.isAllDay) buildDate('A', event.fechaA),
      ],
    );
  }

  Widget buildDate(String title, DateTime date) {
    return Row(
      children: [
        Text(title),
        const SizedBox(width: 12),
        Text(formatDate(date)),
      ],
    );
  }

  String formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year} ${date.hour}:${date.minute}';
  }
}
