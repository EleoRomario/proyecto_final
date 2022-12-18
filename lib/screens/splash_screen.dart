import 'package:flutter/material.dart';
import 'package:proyecto_final/src/config/color_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/teacher');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                const Image(image: AssetImage('assets/logo.png')),
                Padding(
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      children: [
                        //Bienvenida
                        Text('Bienvenido a',
                            style: TextStyle(
                                color: Colors.grey[900],
                                fontSize: 25,
                                fontWeight: FontWeight.w300)),
                        const Text('SchoolApp',
                            style: TextStyle(
                                color: ColorConstants.blue,
                                fontSize: 50,
                                fontWeight: FontWeight.w800)),
                        const SizedBox(height: 50),
                        const CircularProgressIndicator(
                          color: ColorConstants.blue,
                        ),


                        //Button Login
                        // ElevatedButton(
                        //     style: ElevatedButton.styleFrom(
                        //       padding: const EdgeInsets.all(12),
                        //       backgroundColor: Colors.white,
                        //       side: const BorderSide(
                        //           color: Color.fromARGB(255, 231, 231, 231),
                        //           width: 2),
                        //       shape: const RoundedRectangleBorder(
                        //           borderRadius:
                        //               BorderRadius.all(Radius.circular(50))),
                        //     ),
                        //     onPressed: () {
                        //       //AuthService().signInWithGoogle();

                        //       //Navigator.pushNamed(context, '/teacher');
                        //       AuthService().signInWithGoogle().then((result) {
                        //         if (result != null) {
                        //           Navigator.pushNamed(context, '/teacher');
                        //         }
                        //       });
                        //     },
                        //     child: Row(
                        //         mainAxisAlignment: MainAxisAlignment.center,
                        //         children: [
                        //           SizedBox(
                        //             height: 40,
                        //             width: 80,
                        //             child:
                        //                 Image.asset('assets/icons/google.png'),
                        //           ),
                        //           Text(
                        //             'Ingresar con Google',
                        //             style: TextStyle(
                        //                 color: Colors.grey[700],
                        //                 fontSize: 20,
                        //                 fontWeight: FontWeight.w400),
                        //           ),
                        //         ]))
                      ],
                    )),
              ])),
        ));
  }
}
