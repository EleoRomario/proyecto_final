import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_final/src/config/color_constants.dart';

class StudentSickForm extends StatefulWidget {
  const StudentSickForm({Key? key}) : super(key: key);

  @override
  _StudentSickFormState createState() => _StudentSickFormState();
}

class _StudentSickFormState extends State<StudentSickForm> {
  void _selectFile() async {
    final file = await FilePicker.platform.pickFiles(allowMultiple: false);
    if (file != null) {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          color: ColorConstants.green),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '09 septiembre',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(height: 20),
          Container(
            height: 200,
            width: 300,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Motivo',
                      floatingLabelStyle:
                          const TextStyle(color: ColorConstants.green),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: ColorConstants.green),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      _selectFile();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorConstants.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Seleccione un archivo',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/student/sick/form/confirm');
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              backgroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              elevation: 0,
            ),
            child: Text(
              'Enviar',
              style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    ))));
  }
}
