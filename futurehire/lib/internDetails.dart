import 'package:flutter/material.dart';
import 'package:futurehire/data.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:confetti/confetti.dart';

// ignore: must_be_immutable
class InternDetails extends StatefulWidget {
  InternDetails(
      {super.key,
      required this.name,
      required this.money,
      required this.location,
      required this.role,
      required this.decs,
      required this.req,
      required this.about,
      required this.skillset,
      required this.duration});
  String name, money, location, role, decs, about, duration;
  List<String> req, skillset;

  @override
  State<InternDetails> createState() => _InternDetailsState();
}

class _InternDetailsState extends State<InternDetails> {
  late ConfettiController _controller;
  @override
  void initState() {
    super.initState();
    _controller = ConfettiController(duration: const Duration(seconds: 1));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _showAlertWithAnimation() {
    Fluttertoast.showToast(
      msg: "Applied!",
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.blue,
      textColor: Colors.white,
    );

    _controller.play();
  }

  // List<String> req = [
  //   'Lörem ipsum klicktivism multin om än lud i erade. Fisör sokobelt trimäbel.',
  //   'Lörem ipsum klicktivism multin om än lud i erade. Fisör sokobelt trimäbel.',
  //   'Lörem ipsum klicktivism multin om än lud i erade. Fisör sokobelt trimäbel.',
  //   'Lörem ipsum klicktivism multin om än lud i erade. Fisör sokobelt trimäbel.'
  // ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF84B082),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10.0),
                            width: 200, // Adjust the width as per your needs.
                            child: Text(
                              widget.role,
                              style: TextStyle(
                                  fontSize: 30.0, fontWeight: FontWeight.bold),
                              maxLines: 2,
                              overflow: TextOverflow
                                  .ellipsis, // This will add an ellipsis (...) if the text is truncated.
                            ),
                          ),
                          SizedBox(
                            width: width * 0.04,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            height: 50.0,
                            width: 50.0,
                            child: Image.network(
                              'http://pngimg.com/uploads/google/google_PNG19635.png',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFA9C7B1),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            height: height * 0.03,
                            width: width * 0.25,
                            child: Center(
                                child: Text(
                              widget.skillset[0],
                              style: TextStyle(fontSize: 12),
                            )),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFA9C7B1),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            height: height * 0.03,
                            width: width * 0.25,
                            child: Center(
                                child: Text(widget.skillset[1],
                                    style: TextStyle(fontSize: 12))),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFA9C7B1),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            height: height * 0.03,
                            width: width * 0.25,
                            child: Center(
                                child: Text(widget.skillset[2],
                                    style: TextStyle(fontSize: 12))),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    padding:
                        EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFD8E6E4),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Decription',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Text(widget.decs),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        Text(
                          'Requirements',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        for (int index = 0; index < widget.req.length; index++)
                          ListTile(
                            contentPadding: EdgeInsets.only(
                                left: 10, right: 0, top: 0, bottom: 0),
                            leading: Container(
                              width:
                                  7, // Adjust the width to make the bullet point smaller.
                              height:
                                  7, // Adjust the height to make the bullet point smaller.
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black, // Set the color to black.
                              ),
                            ),
                            title: Text(
                              widget.req[
                                  index], // Replace with your actual list item text.
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors
                                    .black, // Set the text color to black.
                              ),
                            ),
                          ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        Text(
                          'About',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Text(widget.about),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        Row(
                          children: [
                            Icon(Icons.money),
                            SizedBox(
                              width: width * 0.05,
                            ),
                            Text(
                              'Rs.${widget.money}',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_pin),
                            SizedBox(
                              width: width * 0.05,
                            ),
                            Text(
                              widget.location,
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          children: [
                            Icon(Icons.calendar_month),
                            SizedBox(
                              width: width * 0.05,
                            ),
                            Text(
                              widget.duration,
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: width * 0.147, right: width * 0.147),
                          child: ElevatedButton(
                              onPressed: () {
                                _showAlertWithAnimation();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF4CA3B6),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: const Text('S U B M I T')),
                        ),
                        SizedBox(
                          height: height * 0.05,
                        )
                      ],
                    ),
                  ),
                ),
                ConfettiWidget(
                  confettiController: _controller,
                  blastDirectionality: BlastDirectionality.explosive,
                  shouldLoop: false,
                  maxBlastForce: 50, // set the max force
                  minBlastForce: 20, // set the min force
                  emissionFrequency: 0.1,
                  numberOfParticles: 69, // adjust the number of particles
                  gravity: 0.9,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
