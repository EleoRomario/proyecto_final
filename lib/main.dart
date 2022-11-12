import 'package:flutter/material.dart';
import 'package:proyecto_final/screens/login.dart';
import 'package:proyecto_final/screens/student/student_main.dart';
import 'package:proyecto_final/screens/student/student.dart';
import 'package:proyecto_final/screens/student/student_permission.dart';
import 'package:proyecto_final/screens/student/student_permission_form.dart';
import 'package:proyecto_final/screens/student/student_permission_form_confirm.dart';
import 'package:proyecto_final/screens/student/student_present.dart';
import 'package:proyecto_final/screens/student/student_present_confirm.dart';
import 'package:proyecto_final/screens/student/student_sick.dart';
import 'package:proyecto_final/screens/student/student_sick_form.dart';
import 'package:proyecto_final/screens/student/student_sick_form_confirm.dart';
import 'package:proyecto_final/screens/teacher/teacher.dart';
import 'package:proyecto_final/screens/teacher/teacher_attendance.dart';
import 'package:proyecto_final/screens/teacher/teacher_main.dart';
import 'package:proyecto_final/screens/teacher/teacher_new_class.dart';
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
      title: 'SchoolApp',
      theme: ThemeData(
        primarySwatch:ColorConstants.primary,
        fontFamily: 'Poppins',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Login(),
        '/student': (context) => const Student(),
        '/student/main': (context) => const StudentMain(),
        '/student/present': (context) => const StudentPresent(),
        '/student/present/confirm': (context) => const StudentPresentConfirm(),
        '/student/sick': (context) => const StudentSick(),
        '/student/sick/form': (context) => const StudentSickForm(),
        '/student/sick/form/confirm': (context) => const StudentSickFormConfirm(),
        '/student/permission': (context) => const StudentPermission(),
        '/student/permission/form': (context) => const StudentPermissionForm(),
        '/student/permission/form/confirm': (context) => const StudentPermissionFormConfirm(),
        '/teacher': (context) => const Teacher(),
        '/teacher/main': (context) => const TeacherMain(),
        '/teacher/new_class': (context) => const TeacherNewClass(),
        '/teacher/attendance': (context) => const TeacherAttendance(),
      },
    );
  }
}