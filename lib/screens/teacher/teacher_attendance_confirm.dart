import 'package:flutter/material.dart';
import 'package:proyecto_final/src/config/color_constants.dart';
import 'package:proyecto_final/widgets/drawer_teacher.dart';

class TeacherAttendanceConfirm extends StatefulWidget {
  const TeacherAttendanceConfirm({ Key? key }) : super(key: key);

  @override
  _TeacherAttendanceConfirmState createState() => _TeacherAttendanceConfirmState();
}

class _TeacherAttendanceConfirmState extends State<TeacherAttendanceConfirm> {
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
                            ElevatedButton(onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.all(5),
                            ),
                            child: Column(
                              children: [
                                Text('5', style: TextStyle(color: Colors.grey[900], fontSize: 20, fontWeight: FontWeight.w400)),
                                Text('domingo', style: TextStyle(color: Colors.grey[800], fontSize: 7, fontWeight: FontWeight.w400)),
                              ],
                            )),
                            const SizedBox(width: 10),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: const EdgeInsets.all(5),
                                ),
                                child: Column(
                                  children: [
                                    Text('6',
                                        style: TextStyle(
                                            color: Colors.grey[900],
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400)),
                                    Text('lunes',
                                        style: TextStyle(
                                            color: Colors.grey[800],
                                            fontSize: 7,
                                            fontWeight: FontWeight.w400)),
                                  ],
                                )),
                            const SizedBox(width: 10),                      
                            ElevatedButton(onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: ColorConstants.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                            ),
                            child: Column(
                              children: const [
                                Text('7', style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.w400)),
                                Text('martes', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400)),
                              ],
                            )),
                            const SizedBox(width: 10),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: const EdgeInsets.all(5),
                                ),
                                child: Column(
                                  children: [
                                    Text('8',
                                        style: TextStyle(
                                            color: Colors.grey[900],
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400)),
                                    Text('miercoles',
                                        style: TextStyle(
                                            color: Colors.grey[800],
                                            fontSize: 7,
                                            fontWeight: FontWeight.w400)),
                                  ],
                                )),
                            const SizedBox(width: 10),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: const EdgeInsets.all(5),
                                ),
                                child: Column(
                                  children: [
                                    Text('9',
                                        style: TextStyle(
                                            color: Colors.grey[900],
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400)),
                                    Text('jueves',
                                        style: TextStyle(
                                            color: Colors.grey[800],
                                            fontSize: 7,
                                            fontWeight: FontWeight.w400)),
                                  ],
                                )),
                          ],
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          child: Column(
                            children: [
                              Text('Estudiantes', style: TextStyle(color: Colors.grey[900], fontSize: 20, fontWeight: FontWeight.w400)),
                              const SizedBox(height: 20),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Nombre estudiante', style: TextStyle(color: Colors.grey[900], fontSize: 15, fontWeight: FontWeight.w400)),
                                      const SizedBox(width: 10),
                                      Row(
                                        children: [
                                          IconButton(onPressed: (){}, icon: Icon(Icons.check_box_outlined, color: Colors.grey[900], size: 30)),
                                          IconButton(onPressed: (){}, icon: Icon(Icons.cancel_presentation_rounded, color: Colors.grey[900], size: 30)),
                                          IconButton(onPressed: (){}, icon: Icon(Icons.info_outlined, color: Colors.grey[900], size: 30)),
                                        ],
                                      )
                                      ]
                                      ),
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