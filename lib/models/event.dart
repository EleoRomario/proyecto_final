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

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      titulo: json['titulo'],
      descripcion: json['descripcion'],
      fechaDe: DateTime.parse(json['fechaDe']),
      fechaA: DateTime.parse(json['fechaA']),
      backgroundColor: Color(json['backgroundColor']),
      isAllDay: json['isAllDay'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'titulo': titulo,
      'descripcion': descripcion,
      'fechaDe': fechaDe.toIso8601String(),
      'fechaA': fechaA.toIso8601String(),
      'backgroundColor': backgroundColor.value,
      'isAllDay': isAllDay,
    };
  }
}
