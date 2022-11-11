import 'package:flutter/material.dart';
import 'package:proyecto_final/screens/login.dart';
import 'package:proyecto_final/screens/student/student_main.dart';
import 'package:proyecto_final/screens/student/student.dart';
import 'package:proyecto_final/screens/student/student_permission.dart';
import 'package:proyecto_final/screens/student/student_present.dart';
import 'package:proyecto_final/screens/student/student_sick.dart';
import 'package:proyecto_final/screens/teacher/teacher.dart';
import 'package:proyecto_final/screens/teacher/teacher_main.dart';
import 'package:proyecto_final/src/config/color_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch:ColorConstants.primary,
        fontFamily: 'Poppins',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Login(),
        '/teacher': (context) => const Teacher(),
        '/student': (context) => const Student(),
        '/student/main': (context) => const StudentMain(),
        '/student/present': (context) => const StudentPresent(),
        '/student/sick': (context) => const StudentSick(),
        '/student/permission': (context) => const StudentPermission(),
        '/teacher/main': (context) => const TeacherMain(),
      },
    );
  }
}