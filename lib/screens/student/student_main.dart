import 'package:flutter/material.dart';

class StudentMain extends StatefulWidget {
  const StudentMain({Key? key}) : super(key: key);

  @override
  _StudentMainState createState() => _StudentMainState();
}

class _StudentMainState extends State<StudentMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
              Container(
                height: 280,
                  padding:const EdgeInsets.only(bottom: 20),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    clipBehavior: Clip.none,
                    children: [
                    Positioned(                  
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50))),
                      ),
                    ),
                    Positioned(
                      top: 80,
                      child: Center(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                            Container(
                                padding: const EdgeInsets.all(20),
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
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            child: Image.network(
                                              'https://images.unsplash.com/photo-1562246229-37b3aca47e18?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                                              height: 80,
                                              width: 80,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Nombre Alumno',
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
                                    const Divider(
                                      color: Color.fromARGB(255, 235, 235, 235),
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
                                                    color: Colors.blue,
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
                                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                            Expanded(
                                              child: ElevatedButton.icon(
                                                onPressed: (){}, 
                                                icon: const Icon(Icons.center_focus_weak),
                                                label: const Text('Asistencia'),
                                                style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(50),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )

                                  ],
                                )),
                          ])),
                    ),
                  ])
              ),
                  
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
                                onPressed: () {},
                                icon: const Icon(Icons.add, color: Colors.grey),
                                label: const Text('Crear curso', style: TextStyle(color: Colors.grey)),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              )
            ]))));
  }
}
