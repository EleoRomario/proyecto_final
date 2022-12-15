import 'package:flutter/material.dart';
import 'package:proyecto_final/services/auth.dart';
import 'package:proyecto_final/src/config/color_constants.dart';
import 'package:proyecto_final/widgets/Header_teacher.dart';
class DrawerTeacher extends StatelessWidget {
const DrawerTeacher({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: ColorConstants.blue,
            ),
            child: HeaderTeacher(),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.75,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    ListTile(
                      leading: const Icon(
                        Icons.book_outlined,
                      ),
                      title: const Text('Cursos'),
                      onTap: () {
                        //Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.calendar_month,
                      ),
                      title: const Text('Eventos'),
                      onTap: () {
                        //Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.notifications,
                      ),
                      title: const Text('Notificaciones'),
                      onTap: () {
                        //Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                Column(
                  children: [
                    Divider(
                      color: Colors.grey[400],
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.logout,
                      ),
                      title: const Text(
                        'Cerrar Sesión',
                        style: TextStyle(color: Colors.grey),
                      ),
                      onTap: () {
                        AuthService().signOut().then(() {
                          Navigator.pushNamed(context, '/');
                        });
                      },
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}