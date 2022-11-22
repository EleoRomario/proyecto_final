import 'dart:ui';

import 'package:flutter/material.dart';

class Event {
  final String titulo;
  final String descripcion;
  final DateTime fechaDe;
  final DateTime fechaA;
  final Color backgroundColor;
  final bool isAllDay;

  const Event({
    required this.titulo,
    required this.descripcion,
    required this.fechaDe,
    required this.fechaA,
    this.backgroundColor = Colors.blue,
    this.isAllDay = false,
  });
}
