import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_final/models/clase.dart';
import 'package:proyecto_final/screens/teacher/teacher_main.dart';
import 'package:proyecto_final/src/config/color_constants.dart';
import 'package:intl/intl.dart';
import 'package:proyecto_final/widgets/Header_teacher.dart';
import 'package:proyecto_final/widgets/drawer_teacher.dart';

final db = FirebaseFirestore.instance;
final classCollection = db.collection('clases');

String nombre = 'Matematicas';
String idProfesor = '1';
DateTime horaLimite = DateTime.now();

class TeacherNewClass extends StatefulWidget {
  const TeacherNewClass({Key? key}) : super(key: key);

  @override
  _TeacherNewClassState createState() => _TeacherNewClassState();
}


class _TeacherNewClassState extends State<TeacherNewClass> {
  TextEditingController timeinput = TextEditingController();
  TextEditingController nameinput = TextEditingController();



  @override
  void initState() {
    timeinput.text = '08:00';
    super.initState();
  }

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
                          child: const Text('Nuevo Curso',
                              style: TextStyle(
                                  color: ColorConstants.blue,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400)),
                        ),
                        const SizedBox(height: 20),
                        Column(
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width - 100,
                                padding: const EdgeInsets.all(30),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromARGB(59, 0, 0, 0),
                                      blurRadius: 10.0,
                                      spreadRadius: 1.0,
                                      offset: Offset(0.0, 0.0),
                                    )
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Form(
                                        child: Column(
                                      children: [
                                        Text('Datos generales',
                                            style: TextStyle(
                                                color: Colors.grey[900],
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600)),
                                        Divider(
                                          color: Colors.grey[400],
                                          thickness: 1,
                                        ),
                                        Column(
                                          children: [
                                            TextFormField(
                                              controller: nameinput,
                                              decoration: InputDecoration(
                                                labelText: 'Nombre del curso',
                                                floatingLabelStyle:
                                                    const TextStyle(
                                                        color: ColorConstants
                                                            .blue),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color:
                                                          ColorConstants.blue),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 10),
                                            TextFormField(
                                              controller: timeinput,
                                              decoration: InputDecoration(
                                                icon: const Icon(Icons.timer),
                                                labelText: 'Hora límite',
                                                floatingLabelStyle:
                                                    const TextStyle(
                                                        color: ColorConstants
                                                            .blue),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color:
                                                          ColorConstants.blue),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              readOnly: true,
                                              onTap: () async {
                                                TimeOfDay? pickedTime =
                                                    await showTimePicker(
                                                  context: context,
                                                  initialTime: TimeOfDay.now(),
                                                );
                                                if (pickedTime != null) {
                                                  print(pickedTime
                                                      .format(context));
                                                  DateTime parsedTime =
                                                      DateFormat.jm().parse(
                                                          pickedTime
                                                              .format(context)
                                                              .toString());
                                                  print(
                                                      parsedTime); //output 1970-01-01 22:53:00.000
                                                  String formattedTime =
                                                      DateFormat('HH:mm:ss')
                                                          .format(parsedTime);
                                                  print(formattedTime);

                                                  setState(() {
                                                    timeinput.text =
                                                        formattedTime;
                                                  });
                                                } else {
                                                  print("Time is not selected");
                                                }
                                              },
                                            )
                                          ],
                                        )
                                      ],
                                    )),
                                    const SizedBox(height: 20),
                                    Divider(
                                      color: Colors.grey[400],
                                      thickness: 1,
                                    ),
                                    const SizedBox(height: 20),
                                    Column(
                                      children: [
                                        Text('Añadir alumnos',
                                            style: TextStyle(
                                                color: Colors.grey[900],
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600)),
                                        const SizedBox(height: 20),
                                        Divider(
                                          color: Colors.grey[400],
                                          thickness: 1,
                                        ),
                                        Form(
                                            child: Column(
                                          children: [
                                            TextFormField(
                                              decoration: InputDecoration(
                                                labelText: 'Correo',
                                                floatingLabelStyle:
                                                    const TextStyle(
                                                        color: ColorConstants
                                                            .blue),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color:
                                                          ColorConstants.blue),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 10),
                                            ElevatedButton.icon(
                                              onPressed: () {},
                                              icon: const Icon(Icons.send,
                                                  color: ColorConstants.blue),
                                              label: const Text(
                                                'Añadir',
                                                style: TextStyle(
                                                    color: ColorConstants.blue),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.white,
                                                  side: const BorderSide(
                                                      color:
                                                          ColorConstants.blue,
                                                      width: 1),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                            )
                                          ],
                                        )),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.white,
                                                  side: const BorderSide(
                                                      color:
                                                          ColorConstants.blue,
                                                      width: 1),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              child: const Text('Cancelar',
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstants.blue)),
                                            ),
                                            const SizedBox(width: 10),
                                            ElevatedButton.icon(
                                                onPressed: () {
                                                  if(nameinput.text.isEmpty){
                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                        const SnackBar(
                                                            content: Text(
                                                                'El nombre no puede estar vacío')));
                                                  }else if(timeinput.text.isEmpty){
                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                        const SnackBar(
                                                            content: Text(
                                                                'La hora no puede estar vacía')));
                                                  }else{
                                                    Clase clase = Clase(
                                                        nombre: nameinput.text,
                                                        horaLimite: timeinput.text,
                                                        idProfesor: FirebaseAuth.instance.currentUser!.uid,
                                                        alumnos: []);

                                                    FirebaseFirestore.instance
                                                        .collection('clases')
                                                        .add(clase.toJson());

                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                        const SnackBar(
                                                            content: Text(
                                                                'Clase creada correctamente')));

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                const TeacherMain()));
                                                  }                                                  
                                                },
                                                icon: const Icon(Icons.save,
                                                    color: Colors.white),
                                                label: const Text(
                                                    'Guardar',
                                                    style: TextStyle(
                                                        color: Colors.white)),
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        ColorConstants.blue,
                                                    side: const BorderSide(
                                                        color:
                                                            ColorConstants.blue,
                                                        width: 1),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)))),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                )),
                          ],
                        )
                      ]),
                ),
              )
            ]))));
  }
}
