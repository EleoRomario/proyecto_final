import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_final/src/config/color_constants.dart';
import 'package:proyecto_final/widgets/drawer_student.dart';

import '../../widgets/Header_student.dart';

class StudentMain extends StatefulWidget {
  const StudentMain({Key? key}) : super(key: key);

  @override
  _StudentMainState createState() => _StudentMainState();
}

class _StudentMainState extends State<StudentMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
        ),
        drawer: const DrawerStudent(),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
              Container(
                  height: 270,
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Stack(
                      alignment: Alignment.topCenter,
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                                color: ColorConstants.blue,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(50),
                                    bottomRight: Radius.circular(50))),
                          ),
                        ),
                        Positioned(
                          top: 30,
                          child: Center(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                Container(
                                    padding: const EdgeInsets.all(20),
                                    width:
                                        MediaQuery.of(context).size.width - 100,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromARGB(59, 0, 0, 0),
                                            blurRadius: 10.0,
                                            spreadRadius: 1.0,
                                            offset: Offset(0.0, 0.0),
                                          )
                                        ]),
                                    child: Column(
                                      children: [
                                        const HeaderStudent(),
                                        const Divider(
                                          color: Color.fromARGB(
                                              255, 235, 235, 235),
                                          height: 20,
                                          thickness: 1,
                                          indent: 20,
                                          endIndent: 20,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Presente',
                                                    style: TextStyle(
                                                        color: Colors.grey[800],
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                  const Text(
                                                    '24',
                                                    style: TextStyle(
                                                        color: ColorConstants.blue,
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Enfermo',
                                                    style: TextStyle(
                                                        color: Colors.grey[800],
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                  const Text(
                                                    '2',
                                                    style: TextStyle(
                                                        color: Colors.green,
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Permiso',
                                                    style: TextStyle(
                                                        color: Colors.grey[900],
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                  const Text(
                                                    '2',
                                                    style: TextStyle(
                                                        color: Colors.orange,
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Falta',
                                                    style: TextStyle(
                                                        color: Colors.grey[800],
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                  const Text(
                                                    '1',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  )
                                                ],
                                              ),
                                            ),
                                            ElevatedButton.icon(
                                              onPressed: () {
                                                Navigator.pushNamed(
                                                    context, '/student/present');
                                              },                                     
                                                icon: const Icon(
                                                    Icons.center_focus_weak),
                                                label: const Text('Asistencia'),
                                                style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                  ),
                                                ),                                                
                                              ),
                                          ],
                                        )
                                      ],
                                    )),
                              ])),
                        ),
                      ])),
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Nivel',
                                  style: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700)),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(children: [
                                Expanded(
                                    child: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                                  width: MediaQuery.of(context).size.width,
                                  decoration: const BoxDecoration(
                                    color: ColorConstants.blue,
                                    borderRadius:
                                        BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                                  ),
                                  child: Row(
                                    children: [
                                      const Icon(Icons.school,
                                          color: Colors.white, size: 30),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Row(
                                        children: const [
                                          Text('15',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.w700)),
                                          Text('/',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.w700)),
                                          Text(' 30',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.w400)),
                                        ],
                                      )
                                    ],
                                  ),
                                )),
                                Expanded(
                                    child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 18, horizontal: 20),
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: ColorConstants.blue, width: 1),
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                  ),
                                  child: Text('Llevas 15 días de asistencia',
                                      style: TextStyle(
                                          color: Colors.grey[800],
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400)),
                                ))
                              ])
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Eventos',
                                  style: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700)),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Expanded(child: Container(
                                    height: 100,
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: const Offset(0, 3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: const Text('Ultimo evento',
                                        style: TextStyle(
                                            color: ColorConstants.blue,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400)),
                                  )),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/student/calendar');
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: ColorConstants.blue,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),                                    
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: const[
                                        Icon(Icons.calendar_month, color: Colors.white, size: 30,),
                                        Text('Calendario',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400)),
                                      ],
                                    )
                                  ))
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Notificaciones',
                                  style: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700)),
                              const SizedBox(
                                height: 10,
                              ),
                              Column(
                                children: [                                  
                                  Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: const Offset(0, 3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: const Text('Ultima notificación',
                                        style: TextStyle(
                                            color: ColorConstants.blue,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: ColorConstants.blue,
                                        border: Border.all(
                                            color: ColorConstants.blue, width: 1),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const[
                                        Icon(Icons.notifications, color: Colors.white, size: 30,),
                                        Text('Crear notificación',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400)),
                                      ],
                                    )
                                  )
                                ],
                              )
                            ],
                          ),
                        ),

                      ]),
                ),
              )
            ]))));
  }
}
