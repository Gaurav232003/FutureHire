import 'package:flutter/material.dart';
import 'data.dart';

class LineOrLine extends StatelessWidget {
  const LineOrLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: width * 0.2546,
            height: height * 0.00123,
            color: Colors.black,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'OR',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            width: width * 0.2546,
            height: 1,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

class LoginPlateTextField extends StatelessWidget {
  const LoginPlateTextField({
    Key? key,
    required this.icon,
    required this.hintText,
  }) : super(key: key);

  final IconData icon;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.0615,
      margin: EdgeInsets.only(left: width * 0.152, right: width * 0.152),
      decoration: BoxDecoration(color: Color(0xFFa5a7a6)),
      child: Center(
        child: Row(
          children: [
            SizedBox(
              width: width * 0.050,
            ),
            Icon(
              icon,
              size: height * 0.036,
            ),
            SizedBox(
              width: width * 0.050,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: hintText,
                  border: InputBorder.none,
                  hintStyle: TextStyle(fontSize: height * 0.027),
                ),
                style: TextStyle(color: Colors.black), // Set text color
                cursorColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class LoginPlate extends StatelessWidget {
//   const LoginPlate({super.key, required this.icon, required this.text});

//   final IconData icon;
//   final String text;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: height * 0.0615,
//       margin: EdgeInsets.only(left: width * 0.152, right: width * 0.152),
//       decoration: const BoxDecoration(color: Color(0xFFa5a7a6)),
//       child: Center(
//         child: Row(
//           children: [
//             SizedBox(
//               width: width * 0.050,
//             ),
//             Icon(
//               icon,
//               size: height * 0.036,
//             ),
//             SizedBox(
//               width: width * 0.050,
//             ),
//             Text(
//               text,
//               style: TextStyle(fontSize: height * 0.027),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class LoginPlate2 extends StatelessWidget {
  const LoginPlate2({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.061,
      margin: EdgeInsets.only(right: width * 0.043),
      decoration: const BoxDecoration(color: Color(0xFFa5a7a6)),
      child: Center(
        child: Row(
          children: [
            SizedBox(
              width: width * 0.050,
            ),
            Icon(
              icon,
              size: height * 0.036,
            ),
            SizedBox(
              width: width * 0.050,
            ),
            Text(
              text,
              style: TextStyle(fontSize: height * 0.027),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginSphere extends StatelessWidget {
  const LoginSphere({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          child: Image.asset(
            'assets/loginsphere.png',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            'LOGIN',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: height * 0.071,
            ),
          ),
        ),
      ],
    );
  }
}

class SignInWithGoogle extends StatelessWidget {
  const SignInWithGoogle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.061,
      padding: EdgeInsets.only(left: width * 0.147, right: width * 0.147),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFCEDDE0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.network(
                'http://pngimg.com/uploads/google/google_PNG19635.png',
                fit: BoxFit.cover),
            SizedBox(
              width: width * 0.076,
            ),
            const Text(
              'Sign-in with Google',
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
