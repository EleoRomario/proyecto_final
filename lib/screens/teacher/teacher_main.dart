import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:proyecto_final/screens/teacher/teacher_new_class.dart';
import 'package:proyecto_final/src/config/color_constants.dart';
import 'package:proyecto_final/widgets/Header_teacher.dart';
import 'package:proyecto_final/widgets/drawer_teacher.dart';

class TeacherMain extends StatefulWidget {
  const TeacherMain({Key? key}) : super(key: key);

  @override
  _TeacherMainState createState() => _TeacherMainState();
}

class _TeacherMainState extends State<TeacherMain> {
  final User user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
        ),
        drawer: const DrawerTeacher(),
        backgroundColor: Colors.white,
        body: SafeArea(
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
                              Text('Mis cursos',
                                  style: TextStyle(
                                      color: Colors.grey[900],
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400)),
                              ElevatedButton.icon(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, '/teacher/new_class');
                                },
                                icon: const Icon(Icons.add, color: Colors.grey),
                                label: const Text('Crear curso',
                                    style: TextStyle(color: Colors.grey)),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        FutureBuilder(
                            future: FirebaseFirestore.instance.collection("clases").where("idProfesor", isEqualTo: user.uid).get(),
                            builder: ((context,
                                AsyncSnapshot<QuerySnapshot> snapshot) {
                              if (snapshot.hasData) {
                                return ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: snapshot.data!.docs.length,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, '/teacher/attendance',
                                            arguments: {
                                              'id': snapshot.data!.docs[index]
                                                  ['nombre']
                                            });
                                      },
                                      child: Slidable(
                                        key: ValueKey(index),
                                        endActionPane: ActionPane(
                                          motion: const DrawerMotion(),
                                          children: [
                                            SlidableAction(onPressed: (value){
                                              FirebaseFirestore.instance.collection("clases").doc(snapshot.data!.docs[index].id).delete();
                                            }, label: 'Eliminar', icon: Icons.delete, backgroundColor: Colors.red, foregroundColor: Colors.white),
                                            SlidableAction(onPressed: (value){
                                              Navigator.pushNamed(context, '/teacher/edit_class', arguments: {
                                                'id': snapshot.data!.docs[index].id,
                                                'nombre': snapshot.data!.docs[index]['nombre'],
                                                'horaLimite': snapshot.data!.docs[index]['horaLimite'],
                                              });
                                            }, label: 'Editar', icon: Icons.edit, backgroundColor: Colors.blue, foregroundColor: Colors.white),
                                          ],
                                        ), child: Container(
                                            height: 100,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width -
                                                100,
                                            decoration: const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color.fromARGB(
                                                        59, 0, 0, 0),
                                                    blurRadius: 10.0,
                                                    spreadRadius: 1.0,
                                                    offset: Offset(0.0, 0.0),
                                                  )
                                                ]),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  height: 100,
                                                  width: 160,
                                                  decoration: const BoxDecoration(
                                                      color:
                                                          ColorConstants.blue,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topLeft: Radius
                                                                  .circular(10),
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      10))),
                                                  child: Center(
                                                    child: Text(
                                                        snapshot
                                                            .data!
                                                            .docs[index]
                                                                ['nombre']
                                                            .toString(),
                                                        style: const TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)),
                                                  ),
                                                ),
                                                Container(
                                                  height: 100,
                                                  width: 80,
                                                  decoration: const BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topRight: Radius
                                                                  .circular(10),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          10))),
                                                  child: Center(
                                                    child: Text(
                                                        snapshot
                                                            .data!
                                                            .docs[index]
                                                                ['horaLimite']
                                                            .toString(),
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[900],
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)),
                                                  ),
                                                ),
                                                Container(
                                                  height: 100,
                                                  width: 50,
                                                  decoration: const BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topRight: Radius
                                                                  .circular(10),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          10))),
                                                  child: Center(
                                                    child: Text(
                                                        snapshot
                                                            .data!
                                                            .docs[index]
                                                                ['alumnos']
                                                            .length
                                                            .toString(),
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[900],
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                      )
                                    );
                                  },
                                );
                              } else {
                                return const Text('No hay cursos');
                              }
                            }))
                      ]),
                ),
              )
            ]))));
  }
}
