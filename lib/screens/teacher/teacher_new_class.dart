import 'package:flutter/material.dart';
import 'package:proyecto_final/src/config/color_constants.dart';
import 'package:intl/intl.dart';
import 'package:proyecto_final/widgets/drawer_teacher.dart';

class TeacherNewClass extends StatefulWidget {
  const TeacherNewClass({Key? key}) : super(key: key);

  @override
  _TeacherNewClassState createState() => _TeacherNewClassState();
}

class _TeacherNewClassState extends State<TeacherNewClass> {
  TextEditingController timeinput = TextEditingController();

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
                  height: 200,
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1562788869-4ed32648eb72?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80',
                                    height: 80,
                                    width: 80,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Nombre profesor',
                                    style: TextStyle(
                                        color: Colors.grey[900],
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    'correo@gmail.com',
                                    style: TextStyle(
                                        color: Colors.grey[400],
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            ],
                          ),
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
                                                onPressed: () {},
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
