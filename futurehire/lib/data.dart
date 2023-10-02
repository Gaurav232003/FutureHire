import 'package:flutter/material.dart';

String ApiKey = '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';
List<String> skills = [
  'Flutter',
  'Firebase',
  'Figma',
  'C++',
  'Java',
  'DSA',
  'OOPS',
  'CP',
  'Javascript'
];
List<String> allSkills = [];
String name = '';
String age = '';
List<Widget> displaySkills = [];

class Details {
  Details(
      {required this.role,
      required this.visibility,
      required this.name,
      required this.duration,
      required this.stipend,
      required this.about});
  String role, name, duration, stipend, about;
  bool visibility;
}

List<Details> explore = [];

List<int> applied = [];

double height = 0;
double width = 0;
