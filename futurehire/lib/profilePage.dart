// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'data.dart';
import 'editSkills.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                    top: height * 0.0492,
                    left: width * 0.076,
                    right: width * 0.076),
                decoration: BoxDecoration(
                  color: Color(0xFFD5E4E2),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back)),
                        Center(
                            child: Text(
                          'Profile',
                          style: TextStyle(
                              fontSize: height * 0.022,
                              fontWeight: FontWeight.bold),
                        )),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.0492,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Name & E-mail ID :

                            Text(
                              name,
                              style: TextStyle(
                                  fontSize: height * 0.0492,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '@$name',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        CircleAvatar(
                          radius: height * 0.0615,
                          backgroundColor: Color(0xFF357F8B),
                          child: Icon(
                            Icons.person,
                            size: height * 0.0738,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.0246,
                    ),
                    SizedBox(
                      height: height * 0.0492,
                    ),

                    //Application Stats :

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              noapplied.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: height * 0.0246),
                            ),
                            Text('Applied',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: height * 0.0246))
                          ],
                        ),
                        Column(
                          children: [
                            Text(accepted.toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: height * 0.0246)),
                            Text('Accepted',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: height * 0.0246))
                          ],
                        ),
                        Column(
                          children: [
                            Text(hired.toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: height * 0.0246)),
                            Text('Hired',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: height * 0.0246))
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.0369,
                    ),

                    // Skills container

                    Container(
                      padding: EdgeInsets.all(height * 0.0246),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFFAAC9AF)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Skills',
                                style: TextStyle(
                                    fontSize: height * 0.0246,
                                    fontWeight: FontWeight.w600),
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => EditSkills()),
                                  );
                                },
                                icon: Icon(
                                  Icons.edit,
                                  size: height * 0.0246,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * 0.0123,
                          ),
                          Container(
                            height: height * 0.0615,
                            child: ListView(
                                scrollDirection: Axis.horizontal,
                                padding: const EdgeInsets.all(8),
                                children: displaySkills),
                          ),
                          SizedBox(
                            height: height * 0.0123,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.0246,
                    ),
                    Container(
                      padding: EdgeInsets.all(height * 0.0246),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFF7A918D)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Resume',
                            style: TextStyle(
                                fontSize: height * 0.0246,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            height: height * 0.0369,
                            width: width * 0.203,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xFFCEDDE0),
                            ),
                            child: Center(
                                child: Text(
                              'view',
                              style: TextStyle(fontSize: height * 0.022),
                            )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.0246,
                    ),
                  ],
                ),
              ),
              PersonalDetails()
            ],
          ),
        ),
      ),
    );
  }
}

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(height * 0.0246),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        color: Color(0xFF1E1E1E),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'Personal Details:',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: height * 0.0110,
          ),
          Container(
            height: height * 0.000246,
            color: Colors.white,
          ),
          SizedBox(
            height: height * 0.0123,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Name:',
                style:
                    TextStyle(color: Colors.white, fontSize: height * 0.0147),
              ),
              Text('Amartya Kumar',
                  style: TextStyle(
                      color: Colors.white, fontSize: height * 0.0147)),
              Icon(
                Icons.edit,
                size: height * 0.0147,
                color: Colors.white,
              )
            ],
          ),
          SizedBox(
            height: height * 0.00615,
          ),
          Container(
            height: height * 0.000246,
            color: Colors.white,
          ),
          SizedBox(
            height: height * 0.0123,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Age:',
                style:
                    TextStyle(color: Colors.white, fontSize: height * 0.0147),
              ),
              Text(age,
                  style: TextStyle(
                      color: Colors.white, fontSize: height * 0.0147)),
              Icon(
                Icons.edit,
                size: height * 0.0147,
                color: Colors.white,
              )
            ],
          ),
          SizedBox(
            height: height * 0.00615,
          ),
          Container(
            height: height * 0.000246,
            color: Colors.white,
          ),
          SizedBox(
            height: height * 0.0123,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Email:',
                style:
                    TextStyle(color: Colors.white, fontSize: height * 0.0147),
              ),
              Text('example@gmail.com',
                  style: TextStyle(
                      color: Colors.white, fontSize: height * 0.0147)),
              Icon(
                Icons.edit,
                size: height * 0.0147,
                color: Colors.white,
              )
            ],
          ),
          SizedBox(
            height: height * 0.00615,
          ),
          Container(
            height: height * 0.000246,
            color: Colors.white,
          ),
          SizedBox(
            height: height * 0.0123,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Phone:',
                style:
                    TextStyle(color: Colors.white, fontSize: height * 0.0147),
              ),
              Text('8017767683',
                  style: TextStyle(
                      color: Colors.white, fontSize: height * 0.0147)),
              Icon(
                Icons.edit,
                size: height * 0.0147,
                color: Colors.white,
              )
            ],
          ),
          SizedBox(
            height: height * 0.00615,
          ),
          Container(
            height: height * 0.000246,
            color: Colors.white,
          ),
          SizedBox(
            height: height * 0.0123,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'City:',
                style:
                    TextStyle(color: Colors.white, fontSize: height * 0.0147),
              ),
              Text('Patna',
                  style: TextStyle(
                      color: Colors.white, fontSize: height * 0.0147)),
              Icon(
                Icons.edit,
                size: height * 0.0147,
                color: Colors.white,
              )
            ],
          )
        ],
      ),
    );
  }
}
