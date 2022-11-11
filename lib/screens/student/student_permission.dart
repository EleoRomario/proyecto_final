import 'package:flutter/material.dart';
import 'package:proyecto_final/src/config/color_constants.dart';
class StudentPermission extends StatefulWidget {
  const StudentPermission({ Key? key }) : super(key: key);

  @override
  _StudentPermissionState createState() => _StudentPermissionState();
}

class _StudentPermissionState extends State<StudentPermission> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onHorizontalDragUpdate: (dragDetail) {
          if (dragDetail.delta.direction >= 0) {
            Navigator.pushNamed(context, '/student/present');
          }
        },
        child: Scaffold(
            backgroundColor: ColorConstants.yellow,
            body: SafeArea(
                child: Center(
                    child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                    child: Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorConstants.yellow,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 10),
                      side: const BorderSide(color: Colors.white, width: 4),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(35))),
                      elevation: 0,
                    ),
                    child: const Text(
                      'PERMISO',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                )),
                const Positioned(
                    bottom: 50,
                    child: Text(
                      'Deslice para ver otra opción',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ))
              ],
            )))));
  }
}