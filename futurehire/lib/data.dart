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
      required this.about,
      required this.req,
      required this.skillset,
      required this.desc,
      required this.id});
  String role, name, duration, stipend, about, desc;
  int color, id;
  bool visibility;
  List<String> req, skillset;
}

List<Details> internships = [];
List<Details> gigs = [];
List<Details> jobs = [];

List<int> applied = [];

double height = 0;
double width = 0;
