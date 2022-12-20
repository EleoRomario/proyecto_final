import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HeaderTeacher extends StatefulWidget {
  const HeaderTeacher({ Key? key }) : super(key: key);

  @override
  _HeaderTeacherState createState() => _HeaderTeacherState();
}

class _HeaderTeacherState extends State<HeaderTeacher> {
  @override
  Widget build(BuildContext context) {
   return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.network(
              (FirebaseAuth.instance.currentUser!.photoURL == null) ? 'https://www.pngitem.com/pimgs/m/146-1468479_my-profile-icon-blank-profile-picture-circle-hd.png' :
              FirebaseAuth.instance.currentUser!.photoURL!,
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
            SizedBox(
                width: 180,
                child: Text(
                  FirebaseAuth.instance.currentUser!.displayName!,
                  style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: Colors.grey[900],
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                )),
            SizedBox(
              width: 180,
              child: Text(
                FirebaseAuth.instance.currentUser!.email!,
                style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: Colors.grey[400],
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
      ],
    );
  }
}