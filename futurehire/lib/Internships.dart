import 'package:flutter/material.dart';
import 'data.dart';
import 'widgets.dart';
import 'internDetails.dart';

class Internships extends StatelessWidget {
  Internships({super.key});
  List<String> name = [
    'Kia',
    'Atlassian',
    'J.P. Morgan',
    'Canon',
    'Open A.I',
    'Intel'
  ];
  List<String> money = ['8000', '10000', '20000', '15000', '10000', '30000'];
  List<String> location = [
    'Banglore, India',
    'Delhi, India',
    'Kolkata, India',
    'Hyderabad, India',
    'Pune, India',
    'Remote'
  ];
  List<String> role = [
    'Digital marketing',
    'Data Analyst',
    'Cybersecurity',
    'Product Designer',
    'ML Dev',
    'Software Tester'
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFD9E7E5),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LoginSphere(
                img: 'assets/internshipBanner.png',
                text: '',
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Available Internships',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    for (int i = 0; i < internships.length; i++)
                      ViewInternshipBox(
                        name: gigs[i].name,
                        role: gigs[i].role,
                        img: '',
                        req: gigs[i].req,
                        company: gigs[i].name,
                        location: 'Work From Home',
                        money: gigs[i].stipend,
                        about: gigs[i].about,
                        duration: gigs[i].duration,
                        s1: gigs[i].skillset[0],
                        s2: gigs[i].skillset[1],
                        s3: gigs[i].skillset[2],
                        desc: gigs[i].desc,
                        colour: Color(gigs[i].color),
                      )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ViewInternshipBox extends StatelessWidget {
  ViewInternshipBox(
      {super.key,
      required this.img,
      required this.s1,
      required this.s2,
      required this.s3,
      required this.role,
      required this.company,
      required this.money,
      required this.location,
      required this.colour,
      required this.desc,
      required this.req,
      required this.about,
      required this.duration,
      required this.name});
  String img, name, money, location, role, desc;
  final company, colour, s1, s2, s3, about, duration;
  List<String> req;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => InternDetails(
                      skillset: [s1, s2, s3],
                      req: req,
                      about: about,
                      duration: duration,
                      name: name,
                      money: money,
                      location: location,
                      role: role,
                      decs: desc)),
            );
          },
          child: Container(
            width: double.infinity, // Set the width to the entire screen width
            child: Container(
              padding: EdgeInsets.only(right: 10.0),
              height: height * 0.1,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
              child: Row(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth:
                          width * 0.2, // Adjust the maximum width for the image
                    ),
                    child: Image.asset(img),
                  ),
                  SizedBox(
                      width:
                          10.0), // Adjust the spacing between the image and text
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                name,
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '($role)',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.money,
                                size: 14.0,
                              ),
                              Text(
                                'Rs.$money per month',
                                style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_pin,
                                size: 14.0,
                              ),
                              Text(location,
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: height * 0.05,
        )
      ],
    );
  }
}
