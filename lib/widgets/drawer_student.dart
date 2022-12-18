import 'package:flutter/material.dart';
import 'package:proyecto_final/services/auth.dart';
import 'package:proyecto_final/src/config/color_constants.dart';
import 'package:proyecto_final/widgets/Header_student.dart';

class DrawerStudent extends StatelessWidget {
  const DrawerStudent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: ColorConstants.blue,
            ),
            child: HeaderStudent(),
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
                        AuthService().signOut();
                        Navigator.pushNamed(context, '/');
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
