import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:futurehire/Appplication/data/application_data.dart';
import 'package:futurehire/Appplication/ui/application_widget.dart';
import 'package:futurehire/data.dart';
import 'package:futurehire/data.dart';

class ApplicationPage extends StatefulWidget {
  const ApplicationPage();

  @override
  State<ApplicationPage> createState() => _ApplicationPageState();
}

class _ApplicationPageState extends State<ApplicationPage> {
  @override
  void initState() {
    for (int i = 0; i < applied.length; i++) {
      pendingApplications.add(internships[applied[i]]);
    }
    for (int i = 0; i < applied2.length; i++) {
      pendingApplications.add(internships[applied2[i]]);
    }
    for (int i = 0; i < applied3.length; i++) {
      pendingApplications.add(internships[applied3[i]]);
    }
    for (int i = 0; i < hired1.length; i++) {
      acceptedApplications.add(internships[hired1[i]]);
    }
    for (int i = 0; i < hired2.length; i++) {
      acceptedApplications.add(internships[hired2[i]]);
    }
    for (int i = 0; i < hired3.length; i++) {
      acceptedApplications.add(internships[hired3[i]]);
    }
    for (int i = 0; i < rejected1.length; i++) {
      rejectedApplications.add(internships[rejected1[i]]);
    }
    for (int i = 0; i < rejected2.length; i++) {
      rejectedApplications.add(internships[rejected2[i]]);
    }
    for (int i = 0; i < rejected3.length; i++) {
      rejectedApplications.add(internships[rejected3[i]]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(147, 177, 167, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //   heading
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 25, top: 60),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      child: Icon(Icons.arrow_back_ios),
                    ),
                  ),
                  SizedBox(
                    width: 66.w,
                  ),
                  Container(
                      child: Text(
                    "Applications",
                    style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: "poppins"),
                  )),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            //   Application information
            Container(
              width: 340.w,
              height: 236.h,
              decoration: BoxDecoration(
                color: Color.fromRGBO(216, 230, 228, 1),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Column(
                children: [
                  //   user info
                  Padding(
                    padding: EdgeInsets.only(left: 25, right: 25, top: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //   user avatar
                        CircleAvatar(
                          radius: height * 0.06,
                          backgroundColor: Color(0xFF357F8B),
                          backgroundImage:
                              AssetImage('assets/pfp_nameholder.png'),
                        ),
                        // SizedBox(width: 25,),

                        //   user name
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: TextStyle(
                                  fontSize: height * 0.0492,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Welcome',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),

                  //   Status
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            noapplied.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: height * 0.0246),
                          ),
                          Text('Applied',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: height * 0.0246))
                        ],
                      ),
                      Column(
                        children: [
                          Text(accepted.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: height * 0.0246)),
                          Text('Accepted',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: height * 0.0246))
                        ],
                      ),
                      Column(
                        children: [
                          Text(hired.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: height * 0.0246)),
                          Text('Hired',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: height * 0.0246))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 25.h,
            ),

            //   Applied list
            Stack(children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 164.h,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(216, 230, 228, 1),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30))),
                  child: Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: acceptedApplications.length,
                          itemBuilder: (context, index) {
                            final applied = acceptedApplications[index];
                            return cards(
                                "internship3.png",
                                applied.role,
                                applied.name,
                                applied.stipend,
                                'Banglore',
                                applied.skillset[0],
                                applied.skillset[1],
                                applied.skillset[2]);
                          }),
                    ),
                  )),
              heading("ACCEPTED"),
            ]),

            SizedBox(
              height: 25.h,
            ),

            //  Pending list
            Stack(children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 164.h,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(216, 230, 228, 1),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30))),
                  child: Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: pendingApplications.length,
                          itemBuilder: (context, index) {
                            final accept = pendingApplications[index];
                            return cards(
                                "internship3.png",
                                accept.role,
                                accept.name,
                                accept.stipend,
                                'Banglore',
                                accept.skillset[0],
                                accept.skillset[1],
                                accept.skillset[2]);
                          }),
                    ),
                  )),
              heading("PENDING"),
            ]),

            SizedBox(
              height: 25.h,
            ),

            //   Rejected list
            Stack(children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 164.h,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(216, 230, 228, 1),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30))),
                  child: Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: rejectedApplications.length,
                          itemBuilder: (context, index) {
                            final reject = rejectedApplications[index];
                            return cards(
                                "internship3.png",
                                reject.role,
                                reject.name,
                                reject.stipend,
                                'Banglore',
                                reject.skillset[0],
                                reject.skillset[1],
                                reject.skillset[2]);
                          }),
                    ),
                  )),
              heading("REJECTED"),
            ])
          ],
        ),
      ),
    );
  }
}
