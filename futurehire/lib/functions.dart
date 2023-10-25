import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:futurehire/BottomBar.dart';
import 'data.dart';
import 'homepage.dart';

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
  print('yaha aayaaaa---');
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

Future<int> fetchInternships() async {
  final ref = FirebaseDatabase.instance.ref();
  final snapshot2 = await ref.child('count').get();
  int c = 1;
  if (snapshot2.exists) {
    Map<dynamic, dynamic> cc = snapshot2.value as Map<dynamic, dynamic>;
    c = cc['count'];
  }
  for (int i = 1; i <= c; i++) {
    final snapshot = await ref.child('internships/$i').get();
    if (snapshot.exists) {
      Map<dynamic, dynamic> values = snapshot.value as Map<dynamic, dynamic>;
      internships.add(Details(
          about: values['about'],
          id: values['id'],
          req: List<String>.from(values['requirements']),
          skillset: List<String>.from(values['skillset']),
          color: values['color'],
          visibility: values['visibility'],
          role: values['role'],
          name: values['name'],
          duration: values['duration'],
          stipend: values['stipend'],
          desc: values['desc']));
    }
  }
  for (int i = 1; i <= c; i++) {
    final snapshot = await ref.child('gigs/$i').get();
    if (snapshot.exists) {
      Map<dynamic, dynamic> values = snapshot.value as Map<dynamic, dynamic>;
      gigs.add(Details(
          about: values['about'],
          id: values['id'],
          req: List<String>.from(values['requirements']),
          skillset: List<String>.from(values['skillset']),
          color: values['color'],
          visibility: values['visibility'],
          role: values['role'],
          name: values['name'],
          duration: values['duration'],
          stipend: values['stipend'],
          desc: values['desc']));
    }
  }
  print(internships);
  print('ho gaya');
  return 0;
}
