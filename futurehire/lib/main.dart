import 'package:flutter/material.dart';
import 'login.dart';
import 'data.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    print('height: ');
    print(height);
    print('w');
    print(width);
    return const Login();
  }
}
