import 'package:flutter/material.dart';
import 'package:futurehire/data.dart';
import 'package:futurehire/internDetails.dart';
import 'profilePage.dart';
import 'data.dart';
import 'internDetails.dart';
import 'Internships.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
                top: height * 0.049,
                left: width * 0.050,
                right: height * 0.024),
            decoration: BoxDecoration(
              color: Color(0xFFD5E4E2),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome!!',
                          style: TextStyle(
                              fontSize: height * 0.024,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: height * 0.018,
                        ),
                        Text(
                          'Gaurav 👋',
                          style: TextStyle(
                              fontSize: height * 0.039,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        for (int i = 0; i < skills.length; i++) {
                          displaySkills.add(
                            Row(
                              children: [
                                Container(
                                  width: width * 0.203,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xFFCEDDE0),
                                  ),
                                  child: Center(child: Text(skills[i])),
                                ),
                                SizedBox(
                                  width: width * 0.025,
                                )
                              ],
                            ),
                          );
                        }
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Profile()),
                        );
                      },
                      child: CircleAvatar(
                        radius: height * 0.0369,
                        backgroundColor: Color(0xFF357F8B),
                        child: Icon(
                          Icons.person,
                          size: height * 0.049,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.0369,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Internships',
                      style: TextStyle(
                          fontSize: height * 0.0246,
                          fontWeight: FontWeight.w600),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Internships()),
                        );
                      },
                      child: Row(
                        children: [Text('View All'), Icon(Icons.arrow_forward)],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.0184,
                ),
                Container(
                  height: height * 0.1722,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.all(8),
                    children: <Widget>[
                      for (int i = 0; i < internships.length; i++)
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: JobBox(
                                desc: internships[i].about,
                                role: internships[i].role,
                                company: internships[i].name,
                                money: internships[i].stipend,
                                location: 'Bengaluru,India',
                                colour: Color(internships[i].color),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.0509,
                            ),
                          ],
                        ),
                      // JobBox(
                      //   role: 'Web Developer',
                      //   company: 'Google',
                      //   money: '18,00,00',
                      //   location: 'Delhi,India',
                      //   colour: Color(0xFFF6CC5B),
                      // ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.0246,
                ),
                Text(
                  'Current Gigs',
                  style: TextStyle(
                      fontSize: height * 0.0246, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: height * 0.0184,
                ),
                Container(
                  height: height * 0.4,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.all(8),
                    children: [
                      GigBox(
                          role: 'Graphic Design',
                          company: 'Ink Dabba',
                          location: 'Work From Home',
                          money: '10,000',
                          time: '2 Weeks',
                          decs:
                              'Lörem ipsum terat, reas i tivanat. Jäfin ösade tyn, gedengen. Vabest dianera huruvida multire levaning, om opor. Binyk gessade för paning. ',
                          colour: Color(0xFF67B5CF)),
                      SizedBox(
                        width: width * 0.0509,
                      ),
                      GigBox(
                          role: 'Flutter Development',
                          company: 'Genotek',
                          location: 'Work From Home',
                          money: '12,000',
                          time: '3 Weeks',
                          decs:
                              'Lörem ipsum terat, reas i tivanat. Jäfin ösade tyn, gedengen. Vabest dianera huruvida multire levaning, om opor. Binyk gessade för paning. ',
                          colour: Color(0xFFBCE784)),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.0246,
                ),
                Text(
                  'Trending Jobs',
                  style: TextStyle(
                      fontSize: height * 0.0246, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: height * 0.0184,
                ),
                Container(
                  height: height * 0.25,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.all(8),
                    children: [
                      InternshipBox(
                          icon: Icon(
                            Icons.circle_rounded,
                            size: height * 0.098,
                            color: Color(0xFFEA4C89),
                          ),
                          name: 'Dribble',
                          role: 'UI/UX Designer',
                          type: 'Paid',
                          colour: Color(0xFFD7C1C1)),
                      SizedBox(
                        width: width * 0.0509,
                      ),
                      InternshipBox(
                          icon: Icon(
                            Icons.facebook,
                            size: height * 0.098,
                            // color: Color(0xFFEA4C89),
                            color: Colors.white,
                          ),
                          name: 'Facebook',
                          role: 'UI/UX Designer',
                          type: 'Paid',
                          colour: Color(0xFF6FA5D2)),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.0246,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InternshipBox extends StatelessWidget {
  const InternshipBox(
      {super.key,
      required this.icon,
      required this.name,
      required this.role,
      required this.type,
      required this.colour});
  final icon, name, role, type, colour;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // navigate to jobs page.. add the details required to go to the info page...
      },
      child: Container(
        height: height * 0.2435,
        width: width * 0.4481,
        padding: EdgeInsets.all(height * 0.018),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(18.0)),
        child: Column(
          children: [
            icon,
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: height * 0.00615,
            ),
            Text(
              role,
              style: TextStyle(
                  fontSize: height * 0.0123,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: height * 0.0098,
            ),
            Text(
              type,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: height * 0.0135),
            ),
          ],
        ),
      ),
    );
  }
}

class GigBox extends StatelessWidget {
  GigBox({
    super.key,
    required this.role,
    required this.company,
    required this.location,
    required this.money,
    required this.time,
    required this.decs,
    required this.colour,
  });
  final role, company, location, money, time, decs, colour;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => InternDetails(
                  name: name,
                  money: money,
                  location: location,
                  role: role,
                  decs: decs)),
        );
      },
      child: Container(
        height: height * 0.4,
        width: width * 0.5092,
        padding: EdgeInsets.all(height * 0.018),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              role,
              style: TextStyle(
                  fontSize: height * 0.017, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: height * 0.0123,
            ),
            Text(
              company,
              style: TextStyle(
                  color: Color(0xFF668692),
                  fontSize: height * 0.0196,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: height * 0.0098,
            ),
            Container(
              height: 1,
              color: Colors.black,
            ),
            SizedBox(
              height: height * 0.0246,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_pin,
                  size: height * 0.018,
                ),
                SizedBox(
                  width: 0.0127,
                ),
                Text(
                  location,
                  style: TextStyle(
                      fontSize: height * 0.0147, fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: height * 0.018,
            ),
            Row(
              children: [
                Icon(
                  Icons.money,
                  size: height * 0.018,
                ),
                SizedBox(
                  width: width * 0.0127,
                ),
                Text(
                  '₹$money',
                  style: TextStyle(
                      fontSize: height * 0.0147, fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: height * 0.018,
            ),
            Row(
              children: [
                Icon(
                  Icons.calendar_month,
                  size: height * 0.018,
                ),
                SizedBox(
                  width: width * 0.0127,
                ),
                Text(
                  time,
                  style: TextStyle(
                      fontSize: height * 0.0147, fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: height * 0.018,
            ),
            Text(
              decs,
              style: TextStyle(
                  fontSize: height * 0.0123, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: height * 0.0123,
            ),
            Row(
              children: [
                Text(
                  'View Details',
                  style: TextStyle(
                      fontSize: height * 0.0123, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.arrow_right_alt)
              ],
            )
          ],
        ),
      ),
    );
  }
}

class JobBox extends StatelessWidget {
  const JobBox(
      {super.key,
      required this.role,
      required this.company,
      required this.money,
      required this.location,
      required this.colour,
      required this.desc});
  final role, company, money, location, colour, desc;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => InternDetails(
                  name: name,
                  money: money,
                  location: location,
                  role: role,
                  decs: desc)),
        );
      },
      child: Container(
        padding: EdgeInsets.all(height * 0.0184),
        width: width * 0.6366,
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.square,
                  size: height * 0.0492,
                ),
                SizedBox(
                  width: width * 0.025,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      role,
                      style: TextStyle(
                          fontSize: height * 0.019,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      company,
                      style: TextStyle(
                          fontSize: height * 0.0123,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: height * 0.0123,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: colour,
                  borderRadius: BorderRadius.circular(10.0),
                  elevation: height * 0.0123,
                  child: Container(
                    height: height * 0.022,
                    width: width * 0.152,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(''),
                  ),
                ),
                Material(
                  color: colour,
                  borderRadius: BorderRadius.circular(10.0),
                  elevation: height * 0.0123,
                  child: Container(
                    height: height * 0.022,
                    width: width * 0.152,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(''),
                  ),
                ),
                Material(
                  color: colour,
                  borderRadius: BorderRadius.circular(10.0),
                  elevation: height * 0.0123,
                  child: Container(
                    height: height * 0.022,
                    width: width * 0.152,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(''),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.0135,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '₹$money/year',
                  style: TextStyle(
                      fontSize: height * 0.0123, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_pin,
                      size: height * 0.0184,
                    ),
                    Text(
                      location,
                      style: TextStyle(
                          fontSize: height * 0.0123,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
