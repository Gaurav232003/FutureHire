import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:futurehire/data.dart';

class DetailViewPage extends StatefulWidget {
  const DetailViewPage({super.key});

  @override
  State<DetailViewPage> createState() => _DetailViewPageState();
}

class _DetailViewPageState extends State<DetailViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(216, 230, 228, 1),
        body: SafeArea(
          child: Container(
            child: Stack(
              children: [
                // Background image
                Image.asset("assets/background-simple.png"),


                // Main Page
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //
                    // Heading
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                      child: Text(
                        'Internships',
                        style: TextStyle(
                          fontSize: 50,
                          fontFamily: 'poppins'
                        ),
                      ),
                    ),

                    //
                    //   cards of different types of intership
                    Expanded(
                      child: Stack(children: [
                        Positioned(
                            top: 200.h,
                            height: 120.h,
                            child: Image.asset("assets/Plant.png")),
                        Positioned(
                            right: 4.w,
                            top: 300.h,
                            child: Image.asset("assets/plant-2.png")),
                        Container(
                            alignment: Alignment.bottomCenter,
                            child: Image.asset("assets/background-complete.png")),
                        Container(
                          // alignment: Alignment.topRight ,
                          child: Positioned(
                              right: 46.w,
                              child: Image.asset(
                                "assets/Vector 2.png",
                              )),
                        ),
                        Container(
                          child: Positioned(
                              top: 10.h,
                              left: 80.w,
                              child: Image.asset(
                                "assets/Vector 1.png",
                              )),
                        ),

                        // list of internship
                        Padding(
                          padding: EdgeInsets.only(left: 25, right: 25, top: 76),
                          child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 15,
                              crossAxisSpacing: 15,
                              childAspectRatio: 160 / 280),
                              itemCount: internships.length,
                              itemBuilder: (context,index) {
                                final typesIntern = internships[index];
                                return  Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(122, 145, 141, 1) ,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(left: 12, right: 12, top: 8),
                                            child: Text(
                                              typesIntern.name,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: Color.fromRGBO(245, 245, 245, 1),
                                                fontFamily: 'poppins',
                                                fontSize: 29,
                                                decoration: TextDecoration.underline,
                                                decorationColor: Color.fromRGBO(245, 245, 245, 1),
                                                decorationThickness: 1,
                                              ),
                                            ),
                                          ),

                                          Container(
                                            padding: EdgeInsets.only(left: 12, right: 12, top: 8),
                                            child: Text(
                                              typesIntern.desc,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: Color.fromRGBO(249, 249, 247, 1),
                                                //fontWeight: FontWeight.normal,
                                                fontSize: 14,
                                                  fontFamily: 'Inter-Regular'
                                              ),
                                            ),
                                          ),

                                          Container(
                                            padding:
                                            EdgeInsets.only(left: 12, right: 12, top: 14,bottom: 14),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(left: 8.0),
                                                  child: SizedBox(
                                                    width: 17,
                                                    height: 17,
                                                    child: Image.asset("assets/grommet-icons_money.png",
                                                        color: Color.fromRGBO(245, 245, 245, 1)),
                                                  ),
                                                ),
                                                SizedBox(width: 12),
                                                Text(
                                                  typesIntern.stipend,
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: 'Inter-Bold',
                                                      fontWeight: FontWeight.bold,
                                                      color: Color.fromRGBO(245, 245, 245, 1)),
                                                )
                                              ],
                                            ),
                                          ),

                                          Container(
                                            padding: EdgeInsets.only(left: 12, right: 12,),
                                            width: MediaQuery.of(context).size.width,
                                            decoration: BoxDecoration(
                                                color: Color.fromRGBO(245, 245, 245, 1),
                                                borderRadius: BorderRadius.only(
                                                    bottomRight: Radius.circular(12),
                                                    bottomLeft: Radius.circular(12))),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "View",
                                                  style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,fontFamily: 'Inter-Black'),
                                                ),
                                              ),
                                            ),
                                          ),



                                        ],
                                      ),
                                      //   Button
                                    ),
                                  ],
                                );
                              }),)

                      ]),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}