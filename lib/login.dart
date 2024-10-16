import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main.dart';
import 'Page2.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Profile Login',
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

// class Login extends StatefulWidget {
class _LoginPageState extends State<LoginPage> {
  // const Login({Key? key}) : super(key: key);
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _roleController = TextEditingController();
  final TextEditingController _schoolController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(padding: EdgeInsets.all(15.0)),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.turn_left,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.list,
                      color: Colors.white,
                    )
                  ],
                ),
                // Padding(padding: EdgeInsets.all(15.0)),
                // CircleAvatar(
                //   radius: 100.0,
                //   backgroundImage: AssetImage('assets/images/logo.png'),
                // ),
                Image(
                  image: AssetImage('assets/images/logo.png'),
                  width: 150,
                ),
                // Padding(padding: EdgeInsets.all(10.0)),

                Text(
                  "Form Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 20),

                Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      children: <Widget>[
                        // Memberikan jarak antar teks
                        TextFormField(
                          controller: _usernameController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Masukan username';
                            }
                            return null;
                          },
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            hintText: "Type Username here..",
                            labelText: "Username",
                            labelStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            hintStyle: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2,
                              ),
                              // borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: _roleController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Masukan Role';
                            }
                            return null;
                          },
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            hintText: "Type Role here..",
                            labelText: "Role",
                            labelStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            hintStyle: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2,
                              ),
                              // borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: _schoolController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Masukan Asal Sekolah';
                            }
                            return null;
                          },
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            hintText: "Type Asal Sekolah here..",
                            labelText: "Sekolah",
                            labelStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            hintStyle: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2,
                              ),
                              // borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: _descriptionController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Masukan Deskripsi dirimu';
                            }
                            return null;
                          },
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            hintText: "Type Deskripsi here..",
                            labelText: "Description",
                            labelStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            hintStyle: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2,
                              ),
                              // borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),


                        SizedBox(
                          height: 40,
                        ),
                        // Divider(
                        //   color: Colors.lightBlue[100],
                        // ),
                        OutlinedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0))),
                            side: MaterialStateProperty.all<BorderSide>(
                              BorderSide(
                                color: Colors.white,
                                width: 2,
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => home(
                                        username: _usernameController.text,
                                        role: _roleController.text,
                                        school: _schoolController.text,
                                        description: _descriptionController.text,
                                      )),
                            );
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )),

                Padding(padding: EdgeInsets.all(5)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
