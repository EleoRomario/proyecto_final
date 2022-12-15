import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:proyecto_final/src/config/color_constants.dart';
import 'package:proyecto_final/widgets/Header_teacher.dart';
import 'package:proyecto_final/widgets/drawer_teacher.dart';

class TeacherAttendanceConfirm extends StatefulWidget {
  const TeacherAttendanceConfirm({Key? key}) : super(key: key);

  @override
  _TeacherAttendanceConfirmState createState() =>
      _TeacherAttendanceConfirmState();
}

class _TeacherAttendanceConfirmState extends State<TeacherAttendanceConfirm> {
  final fechaHoy = DateFormat('EEEE')
      .format(DateFormat("DD").parse(DateTime.now().toString()));

  final diaHoy = DateFormat('dd').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
        ),
        drawer: const DrawerTeacher(),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
              Container(
                  padding: const EdgeInsets.all(20),
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: ColorConstants.blue,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50))),
                  child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                        Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width - 100,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(59, 0, 0, 0),
                                  blurRadius: 10.0,
                                  spreadRadius: 1.0,
                                  offset: Offset(0.0, 0.0),
                                )
                              ]),
                          child: const HeaderTeacher(),
                        ),
                      ]))),
              const SizedBox(height: 40),
              Container(
                padding: const EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Confirmar asistencia',
                                  style: TextStyle(
                                      color: Colors.grey[900],
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400)),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            const SizedBox(width: 10),
                            Expanded(
                              child: Container(
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    color: ColorConstants.blue,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: const Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Text(diaHoy,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 40,
                                              fontWeight: FontWeight.w400)),
                                      Text(fechaHoy,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400)),
                                    ],
                                  )),
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          child: Column(
                            children: [
                              Text('Estudiantes',
                                  style: TextStyle(
                                      color: Colors.grey[900],
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400)),
                              const SizedBox(height: 20),
                              Column(
                                children: [
                                  Row(children: [
                                    Text('Nombre estudiante',
                                        style: TextStyle(
                                            color: Colors.grey[900],
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400)),
                                    const SizedBox(width: 10),
                                    Row(
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.check_box_outlined,
                                                color: Colors.grey[900],
                                                size: 30)),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                                Icons
                                                    .cancel_presentation_rounded,
                                                color: Colors.grey[900],
                                                size: 30)),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.info_outlined,
                                                color: Colors.grey[900],
                                                size: 30)),
                                      ],
                                    )
                                  ]),
                                  const SizedBox(height: 10),
                                  Row(children: [
                                    Text('Nombre estudiante',
                                        style: TextStyle(
                                            color: Colors.grey[900],
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400)),
                                    const SizedBox(width: 10),
                                    Row(
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.check_box_outlined,
                                                color: Colors.grey[900],
                                                size: 20)),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                                Icons
                                                    .cancel_presentation_rounded,
                                                color: Colors.grey[900],
                                                size: 20)),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.info_outlined,
                                                color: Colors.grey[900],
                                                size: 20)),
                                      ],
                                    )
                                  ]),
                                  const SizedBox(height: 10),
                                  Row(children: [
                                    Text('Nombre estudiante',
                                        style: TextStyle(
                                            color: Colors.grey[900],
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400)),
                                    const SizedBox(width: 10),
                                    Row(
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.check_box_outlined,
                                                color: Colors.grey[900],
                                                size: 20)),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                                Icons
                                                    .cancel_presentation_rounded,
                                                color: Colors.grey[900],
                                                size: 20)),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.info_outlined,
                                                color: Colors.grey[900],
                                                size: 20)),
                                      ],
                                    )
                                  ]),
                                  const SizedBox(height: 10),
                                  Row(children: [
                                    Text('Nombre estudiante',
                                        style: TextStyle(
                                            color: Colors.grey[900],
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400)),
                                    const SizedBox(width: 10),
                                    Row(
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.check_box_outlined,
                                                color: Colors.grey[900],
                                                size: 20)),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                                Icons
                                                    .cancel_presentation_rounded,
                                                color: Colors.grey[900],
                                                size: 20)),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.info_outlined,
                                                color: Colors.grey[900],
                                                size: 20)),
                                      ],
                                    )
                                  ]),
                                  const SizedBox(height: 10),
                                  Row(children: [
                                    Text('Nombre estudiante',
                                        style: TextStyle(
                                            color: Colors.grey[900],
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400)),
                                    const SizedBox(width: 10),
                                    Row(
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.check_box_outlined,
                                                color: Colors.grey[900],
                                                size: 20)),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                                Icons
                                                    .cancel_presentation_rounded,
                                                color: Colors.grey[900],
                                                size: 20)),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.info_outlined,
                                                color: Colors.grey[900],
                                                size: 20)),
                                      ],
                                    )
                                  ]),
                                ],
                              )
                            ],
                          ),
                        )
                      ]),
                ),
              )
            ]))));
  }
}
