import 'package:flutter/material.dart';
import 'package:proyecto_final/src/config/color_constants.dart';

class Student extends StatefulWidget {
  const Student({ Key? key }) : super(key: key);

  @override
  _StudentState createState() => _StudentState();
}

class _StudentState extends State<Student> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onHorizontalDragUpdate: (dragDetail) {
          if (dragDetail.delta.direction >= 0) {
            Navigator.pushNamed(context, '/teacher');
          }
        },
        child: Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
                child: Center(
                    child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('¿Quién eres tú?',
                    style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 25,
                        fontWeight: FontWeight.w300)),
                const SizedBox(height: 40),
                const Image(image: AssetImage('assets/student.png')),
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: ColorConstants.blue,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(50))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(20),
                          backgroundColor: Colors.white,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/student/main');
                        },
                        child: Text(
                          'Estudiante',
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      const Text(
                          'Deslice para elegir Profesor',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w300)),
                    ],
                  ),
                )
              ],
            )))));
  }
}