import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'Page2.dart';

class home extends StatelessWidget {
  const home({super.key, required this.username,required this.role,required this.school,required this.description });
  final String username;
  final String role;
  final String school;
  final String description;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 0, 234, 255),
                const Color(0xFF3366FF),
              ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
          // image: DecorationImage(
          //   image: AssetImage("assets/images/dark.jpg"),
          //   fit: BoxFit.cover,
          // ),
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
                Padding(padding: EdgeInsets.all(15.0)),
                CircleAvatar(
                  radius: 100.0,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/icons/facebook.png',
                      width: 50,
                    ),
                    Image.asset(
                      'assets/icons/linkedin.png',
                      width: 50,
                    ),
                    Image.asset(
                      'assets/icons/gmail.png',
                      width: 50,
                    ),
                    Image.asset(
                      'assets/icons/github.png',
                      width: 50,
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Padding(padding: EdgeInsets.all(10.0)),
                Text(
                  "$username",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  "- $role -",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(height: 20),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.lightBlueAccent,
                  child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        children: <Widget>[
                          // Memberikan jarak antar teks
                          Text(
                            "About Me ",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Divider(
                            color: Colors.lightBlue[100],
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            "Sekolah :  $school ",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            "🔍 $description ",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Divider(
                            color: Colors.lightBlue[100],
                          ),

                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Page2()),
                                );
                              },
                              child: Text(
                                'See More',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      )),
                ),
               Padding(padding: EdgeInsets.all(5)),
                Text(
                  "©️ Copyright Azqi",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.lightBlueAccent[900],
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
