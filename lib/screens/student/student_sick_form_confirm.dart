import 'package:flutter/material.dart';
import 'package:proyecto_final/src/config/color_constants.dart';
class StudentSickFormConfirm extends StatefulWidget {
  const StudentSickFormConfirm({ Key? key }) : super(key: key);

  @override
  _StudentSickFormConfirmState createState() => _StudentSickFormConfirmState();
}

class _StudentSickFormConfirmState extends State<StudentSickFormConfirm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstants.green,
        body: SafeArea(
            child: Center(
                child: Container(
          height: 500,
          width: 350,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                )
              ],
              color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/note.png'),
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),
              const Text(
                'Informe enviado con éxito',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),             
              const Text(
                '06:45',
                style: TextStyle(
                    color: ColorConstants.green,
                    fontSize: 80,
                    fontWeight: FontWeight.w800),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/student/main');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorConstants.green,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  elevation: 0,
                ),
                child: const Text(
                  'Hecho',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
        ))));
  }
}