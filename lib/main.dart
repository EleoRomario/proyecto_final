import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_final/screens/login.dart';
import 'package:proyecto_final/screens/student/student_calendar.dart';
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
import 'package:proyecto_final/screens/teacher/teacher_attendance_confirm.dart';
import 'package:proyecto_final/screens/teacher/teacher_calendar.dart';
import 'package:proyecto_final/screens/teacher/teacher_main.dart';
import 'package:proyecto_final/screens/teacher/teacher_new_class.dart';
import 'package:proyecto_final/screens/teacher/teacher_new_event.dart';
import 'package:proyecto_final/services/auth.dart';
import 'package:proyecto_final/src/config/color_constants.dart';
import 'package:proyecto_final/src/provider/event_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EventProvider(),
      child: MaterialApp(
        title: 'SchoolApp',
        theme: ThemeData(
          primarySwatch: ColorConstants.primary,
          fontFamily: 'Poppins',
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const Login(),
          '/student': (context) => const Student(),
          '/student/main': (context) => const StudentMain(),
          '/student/present': (context) => const StudentPresent(),
          '/student/present/confirm': (context) =>
              const StudentPresentConfirm(),
          '/student/sick': (context) => const StudentSick(),
          '/student/sick/form': (context) => const StudentSickForm(),
          '/student/sick/form/confirm': (context) =>
              const StudentSickFormConfirm(),
          '/student/permission': (context) => const StudentPermission(),
          '/student/permission/form': (context) =>
              const StudentPermissionForm(),
          '/student/permission/form/confirm': (context) =>
              const StudentPermissionFormConfirm(),
          '/student/calendar': (context) => const StudentCalendar(),
          '/teacher': (context) => const Teacher(),
          '/teacher/main': (context) => const TeacherMain(),
          '/teacher/new_class': (context) => const TeacherNewClass(),
          '/teacher/attendance': (context) => const TeacherAttendance(),
          '/teacher/attendance/confirm': (context) =>
              const TeacherAttendanceConfirm(),
          '/teacher/calendar': (context) => const TeacherCalendar(),
          '/teacher/new_event': (context) => const TeacherNewEvent(),
        },
      ),
    );
  }
}
