import 'package:flutter/material.dart';
import 'widgets.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(color: Color(0xFFA3C17C)),
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(color: Color(0xFFA3C17C)),
                    child: const Column(
                      children: [
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          'Let\'s Get Started',
                          style: TextStyle(
                              fontSize: 40.0, fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          'Please enter your current details accurately in the respective fields given below!!!',
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.w400),
                        )
                      ],
                    )),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(90),
                      topRight: Radius.circular(90),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const SizedBox(
                                height: 20.0,
                              ),
                              const Center(
                                  child: Text(
                                'Enter Your Details',
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold),
                              )),
                              const SizedBox(
                                height: 20.0,
                              ),
                              const Text(
                                'Name',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              TextField(
                                style: const TextStyle(
                                    fontSize:
                                        16), // Adjust the font size if needed
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                      horizontal: 16), // Adjust padding
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Set the border radius
                                    borderSide: BorderSide
                                        .none, // Remove the border lines
                                  ),
                                  filled: true,
                                  hintStyle: TextStyle(
                                      color: Colors.grey[
                                          400]), // Change the hint text color
                                  hintText: "Enter Full Name",
                                  fillColor: const Color(
                                      0xFFe3e0e0), // Set the background color
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              const Text(
                                'E-mail',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              TextField(
                                style: const TextStyle(
                                    fontSize:
                                        16), // Adjust the font size if needed
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                      horizontal: 16), // Adjust padding
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Set the border radius
                                    borderSide: BorderSide
                                        .none, // Remove the border lines
                                  ),
                                  filled: true,
                                  hintStyle: TextStyle(
                                      color: Colors.grey[
                                          400]), // Change the hint text color
                                  hintText: "Enter E-mail ID",
                                  fillColor: const Color(
                                      0xFFe3e0e0), // Set the background color
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              const Text(
                                'Age',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              TextField(
                                style: const TextStyle(
                                    fontSize:
                                        16), // Adjust the font size if needed
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                      horizontal: 16), // Adjust padding
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Set the border radius
                                    borderSide: BorderSide
                                        .none, // Remove the border lines
                                  ),
                                  filled: true,
                                  hintStyle: TextStyle(
                                      color: Colors.grey[
                                          400]), // Change the hint text color
                                  hintText: "Enter Age",
                                  fillColor: const Color(
                                      0xFFe3e0e0), // Set the background color
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              const Text(
                                'Phone Number',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              TextField(
                                style: const TextStyle(
                                    fontSize:
                                        16), // Adjust the font size if needed
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                      horizontal: 16), // Adjust padding
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Set the border radius
                                    borderSide: BorderSide
                                        .none, // Remove the border lines
                                  ),
                                  filled: true,
                                  hintStyle: TextStyle(
                                      color: Colors.grey[
                                          400]), // Change the hint text color
                                  hintText: "Enter Number",
                                  fillColor: const Color(
                                      0xFFe3e0e0), // Set the background color
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              const Text(
                                'City',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              TextField(
                                style: const TextStyle(
                                    fontSize:
                                        16), // Adjust the font size if needed
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                      horizontal: 16), // Adjust padding
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Set the border radius
                                    borderSide: BorderSide
                                        .none, // Remove the border lines
                                  ),
                                  filled: true,
                                  hintStyle: TextStyle(
                                      color: Colors.grey[
                                          400]), // Change the hint text color
                                  hintText: "Enter City",
                                  fillColor: const Color(
                                      0xFFe3e0e0), // Set the background color
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              const Text('Resume\n\nPlease include a resume'),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: LoginPlate2(
                                    icon: Icons.cloud, text: 'Choose'),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              const Text(
                                'Password',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              TextField(
                                style: const TextStyle(
                                    fontSize:
                                        16), // Adjust the font size if needed
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                      horizontal: 16), // Adjust padding
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Set the border radius
                                    borderSide: BorderSide
                                        .none, // Remove the border lines
                                  ),
                                  filled: true,
                                  hintStyle: TextStyle(
                                      color: Colors.grey[
                                          400]), // Change the hint text color
                                  hintText: "Enter Password",
                                  fillColor: const Color(
                                      0xFFe3e0e0), // Set the background color
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              const Text(
                                'Confirm Password',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              TextField(
                                style: const TextStyle(
                                    fontSize:
                                        16), // Adjust the font size if needed
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                      horizontal: 16), // Adjust padding
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Set the border radius
                                    borderSide: BorderSide
                                        .none, // Remove the border lines
                                  ),
                                  filled: true,
                                  hintStyle: TextStyle(
                                      color: Colors.grey[
                                          400]), // Change the hint text color
                                  hintText: "Re-Enter Password",
                                  fillColor: const Color(
                                      0xFFe3e0e0), // Set the background color
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFFA3C17C)),
                                  onPressed: () {},
                                  child: Text(
                                    'Submit',
                                    style: TextStyle(
                                        fontSize: 30.0, color: Colors.black),
                                  )),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text('Already a User?'),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      'SIGN IN',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
