import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class UserApp with ChangeNotifier {
  String id;
  String? displayName;
  String? photoURL;
  String? email;

  UserApp({
    required this.id,
    required this.displayName,
    required this.photoURL,
    required this.email,
  });

  factory UserApp.fromFirestore(DocumentSnapshot doc) {
    return UserApp(
      id: doc['id'],
      displayName: doc['displayName'],
      photoURL: doc['photoURL'],
      email: doc['email'],
    );
  }
}
