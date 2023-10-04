import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:futurehire/BottomBar.dart';
import 'data.dart';

void LoginFunction(String email, String pass, BuildContext context) async {
  UserCredential userCredential =
      await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email,
    password: pass,
  );
  Navigator.pushReplacement<void, void>(
    context,
    MaterialPageRoute<void>(
      builder: (BuildContext context) => BottomBar(),
    ),
  );
}

Future<int> fetchSkillsFromDatabase() async {
  User? user = FirebaseAuth.instance.currentUser;
  String uid = user!.uid.toString();
  final ref = FirebaseDatabase.instance.ref();
  print('yaha aaya');
  final snapshot = await ref.child('users/$uid').get();
  if (snapshot.exists) {
    Map<dynamic, dynamic> values = snapshot.value as Map<dynamic, dynamic>;
    for (int i = 0; i < values['skills'].length; i++) {
      skills.add(values['skills'][i].toString());
    }
    if (values['applied'] != null) {
      for (int i = 0; i < values['applied'].length; i++) {
        applied.add(values['applied'][i]);
      }
    }
    name = values['name'];
    age = values['age'];
    print(values['skills']);
  } else {
    print('No data available.');
  }
  return 0;
}
