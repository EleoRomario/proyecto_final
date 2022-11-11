import 'package:flutter/material.dart';

class StudentPresent extends StatefulWidget {
  const StudentPresent({Key? key}) : super(key: key);

  @override
  _StudentPresentState createState() => _StudentPresentState();
}

class _StudentPresentState extends State<StudentPresent> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onHorizontalDragUpdate: (dragDetail) {
          if (dragDetail.delta.direction >= 0) {
            Navigator.pushNamed(context, '/teacher');
          }
        },
        child: Scaffold(
            backgroundColor: Colors.blue,
            body: SafeArea(child: Center(child: Column(
              children: [
                ElevatedButton(
                  onPressed: (){},                  
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    side: const BorderSide(color: Colors.white, width: 2),
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.all(Radius.circular(50))),
                  ),
                  child: const Text('PRESENTE', 
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w500
                  ),),
                ),
              ],
            )))));
  }
}
