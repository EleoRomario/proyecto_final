import 'package:flutter/material.dart';

class Teacher extends StatefulWidget {
  const Teacher({Key? key}) : super(key: key);

  @override
  _TeacherState createState() => _TeacherState();
}

class _TeacherState extends State<Teacher> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (dragDetail) {
        if (dragDetail.delta.direction <= 0) {
          Navigator.pushNamed(context, '/student');
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
            const Image(image: AssetImage('assets/teacher.png')),
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50))),
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
                            Navigator.pushNamed(context, '/teacher');
                          },
                      child: Text(
                          'Profesor',
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                          
                  const Text(
                    'Deslice para elegir Estudiante',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w300)
                    ),
                ],
              ),
            )
          ],
        )))));
    
  }
}
