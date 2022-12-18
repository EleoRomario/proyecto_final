import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:proyecto_final/models/user.dart';
import 'package:proyecto_final/models/user_login.dart';
import 'package:proyecto_final/screens/login.dart';
import 'package:proyecto_final/screens/student.dart';

class AuthService {
  handleAutState() {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            return const Student();
          } else {
            return const Login();
          }
        });
  }

  signInWithGoogle() async {
    final GoogleSignInAccount? googleUser =
        await GoogleSignIn(scopes: <String>["email", "profile"]).signIn();

    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  signOut(){     FirebaseAuth.instance.signOut();
  }

  signInWithEmailAndPassword(UserLogin _user) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: _user.email.toString(),
              password: _user.password.toString());

      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  registerWithEmailAndPassword(UserApp _user) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: _user.email.toString(),
              password: _user.password.toString());

      User? user = userCredential.user;
      await user?.updateDisplayName(_user.displayName.toString());
      await user?.updatePhotoURL(_user.photoURL.toString());
      await FirebaseFirestore.instance
          .collection('users')
          .doc(user?.uid)
          .set(_user.toJson());
      await user?.reload();
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        const SnackBar(
            content: Text('The account already exists for that email.'));
      }
    } catch (e) {
      print(e);
    }
  }

  registerWithGoogle() async {
    final GoogleSignInAccount? googleUser =
        await GoogleSignIn(scopes: <String>["email", "profile"]).signIn();

    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    User user =
        (await FirebaseAuth.instance.signInWithCredential(credential)).user!;

    print("Usuario creado con Google: $user.");

    return credential;
  }
}
