import 'package:flutter/material.dart';
import 'package:futurehire/data.dart';
import 'widgets.dart';
import 'register.dart';
import 'homepage.dart';
import 'data.dart';
import 'BottomBar.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const LoginSphere(),
            SizedBox(
              height: height * 0.0264,
            ),
            Center(
              child: Text(
                'Hey There!!',
                style: TextStyle(
                    fontSize: height * 0.039, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 0.049 * height,
            ),
            Container(
              padding:
                  EdgeInsets.only(left: width * 0.127, right: width * 0.076),
              child: Text(
                'One-Stop Solution for all your hiring requirements!!',
                style: TextStyle(
                    fontSize: height * 0.0319, fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: height * 0.073,
            ),
            LoginPlateTextField(
              icon: Icons.person,
              hintText: 'U S E R N A M E',
            ),
            SizedBox(
              height: height * 0.0246,
            ),
            LoginPlateTextField(icon: Icons.key, hintText: 'P A S S W O R D'),
            SizedBox(
              height: height * 0.0246,
            ),
            Container(
              padding:
                  EdgeInsets.only(left: width * 0.147, right: width * 0.147),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement<void, void>(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => BottomBar(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4CA3B6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text('L O G I N')),
            ),
            SizedBox(
              height: height * 0.036,
            ),
            const LineOrLine(),
            SizedBox(
              height: height * 0.036,
            ),
            const SignInWithGoogle(),
            SizedBox(
              height: height * 0.012,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('New User?'),
                SizedBox(
                  width: width * 0.025,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Register()),
                    );
                  },
                  child: const Text(
                    'REGISTER',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
