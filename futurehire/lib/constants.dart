// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:futurehire/data.dart';

class SkillContainer extends StatelessWidget {
  SkillContainer(
      {required this.color1,
      required this.color2,
      required this.text,
      required this.image});
  final Color color1;
  final Color color2;
  final String text;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [color1, color2],
        ),
      ),
      //Inside Element
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(start: 10.0, top: 10),
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: height * 0.02,
            width: width * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80, right: 50.0),
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
              width: 20.0,
              height: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}


// Color(0x97B2AD).withOpacity(0.7),
//             Color(0x7A918D),