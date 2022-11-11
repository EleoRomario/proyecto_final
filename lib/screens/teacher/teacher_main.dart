import 'package:flutter/material.dart';

class TeacherMain extends StatefulWidget {
  const TeacherMain({Key? key}) : super(key: key);

  @override
  _TeacherMainState createState() => _TeacherMainState();
}

class _TeacherMainState extends State<TeacherMain> {
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
                  padding: const EdgeInsets.all(20),
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
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
                                    'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                                    height: 80,
                                    width: 80,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
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
                              Text('Mis cursos',
                                  style: TextStyle(
                                      color: Colors.grey[900],
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400)),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50))),
                                child: const Text(
                                  'Crear curso',
                                  style: TextStyle(color: Colors.grey),
                                ),
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
