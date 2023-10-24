import 'package:flutter/material.dart';

List<String> skills = [];
List<String> allSkills = [];
String name = '';
String age = '';
List<Widget> displaySkills = [];
List<String> jobBoxColor = [];

class Details {
  Details(
      {required this.role,
      required this.visibility,
      required this.name,
      required this.duration,
      required this.stipend,
      required this.color,
      required this.about});
  String role, name, duration, stipend, about;
  int color;
  bool visibility;
}

List<Details> internships = [];

List<int> applied = [];

double height = 0;
double width = 0;
