import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key:key);

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
                  backgroundImage: AssetImage('assets/images/mee.jpg'),
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
                  "Muhammad Azqi Madani Ardan",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  "- Web Developer -",
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
                            "🔍 Saya adalah seorang siswa di SMK Wikrama Bogor Saya fokus dalam bidang pengembangan perangkat lunak dan game",
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

                        ],
                      )),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.lightBlue[200],
                  margin: new EdgeInsets.only(top: 20, bottom: 20),
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "History",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Divider(
                          color: Colors.lightBlueAccent[400],
                          height: 40,
                        ),

                        Text(
                          "(2007-sekarang)",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        //  Row(
                        //   children: [
                        //     Image.asset('assets/images/wikrama.jpg',width: 70,),
                        //     Column(
                        //       children: [
                        //         Text("Praktik Kerja Lapangan",
                        //         style: TextStyle(
                        //            fontSize: 15,
                        //         color: Colors.black,
                        //         fontWeight: FontWeight.bold,
                        //         ),textAlign: TextAlign.justify,
                        //         ),
                        //         Text("2022-2023")

                        //       ],

                        //     ),
                        //     ],
                        //  ),

                        Text(
                          "Seorang anak keren terlahir",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        // pemisah content block
                        Divider(
                          color: Colors.lightBlueAccent[400],
                          height: 40,
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //   mainAxisSize: MainAxisSize.min,
                        //   children: <Widget>[
                        //     Column(
                        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //       mainAxisSize: MainAxisSize.max,
                        //         children: [
                        //           Text(
                        //             "Saya Adalah Seorang Siswa di sSMK Wikrama Bogor",
                        //             textAlign: TextAlign.center,
                        //             style: TextStyle(
                        //               fontSize: 10,
                        //               color: Colors.black,
                        //             ),
                        //           ),
                        //           Text(
                        //             "Saya Adalah Seorang Siswa di SMK Wikrama Bogor",
                        //             textAlign: TextAlign.center,
                        //             style: TextStyle(
                        //               fontSize: 10,
                        //               color: Colors.black,
                        //             ),
                        //           ),
                        //         ],
                        //       ),
                            
                        //   ],
                        // ),
                        
                        Text(
                          "(2020-2022)",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Melakukan Praktik Kerja Lapangan di PT.Industri Kreatif Digital",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        // pemisah content block
                        Divider(
                          color: Colors.lightBlueAccent[400],
                          height: 40,
                        ),
                        Text(
                          "(2023-2025)",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Menempuh Pendidikan di SMK Wikrama Bogor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        Divider(
                          color: Colors.lightBlueAccent[400],
                          height: 40,
                        ),
                        Text(
                          "(2023-2024)",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Melakukan Praktik Kerja Lapangan di PT.Industri Kreatif Digital",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5))
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.lightBlueAccent,
                  child: Padding(
                      padding: EdgeInsets.all(26.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Skills",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Divider(
                            color: Colors.lightBlue[100],
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "HTML : ",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(Icons.star, color: Colors.cyan[100]),
                                  Icon(Icons.star, color: Colors.cyan[100]),
                                  Icon(Icons.star, color: Colors.cyan[200]),
                                  Padding(padding: EdgeInsets.all(10)),
                                  Text(
                                    "CSS : ",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(Icons.star, color: Colors.cyan[100]),
                                  Icon(Icons.star, color: Colors.cyan[100]),
                                  Icon(Icons.star, color: Colors.cyan[200]),
                                ],
                              ),
                              Padding(padding: EdgeInsets.all(5)),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Tailwind : ",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(Icons.star, color: Colors.cyan[100]),
                                  Icon(Icons.star, color: Colors.cyan[100]),
                                  Icon(Icons.star, color: Colors.cyan[200]),
                                  Padding(padding: EdgeInsets.all(10)),
                                  Text(
                                    "PHP : ",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(Icons.star, color: Colors.cyan[100]),
                                  Icon(Icons.star, color: Colors.cyan[100]),
                                  Icon(Icons.star, color: Colors.cyan[200]),
                                ],
                              ),
                              Padding(padding: EdgeInsets.all(5)),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Javascript : ",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(Icons.star, color: Colors.cyan[100]),
                                  Icon(Icons.star, color: Colors.cyan[100]),
                                  Icon(Icons.star, color: Colors.cyan[200]),
                                  Padding(padding: EdgeInsets.all(10)),
                                  Text(
                                    "React : ",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(Icons.star, color: Colors.cyan[100]),
                                  Icon(Icons.star, color: Colors.cyan[100]),
                                  Icon(Icons.star, color: Colors.cyan[200]),
                                ],
                              ),
                            ],
                          )
                        ],
                      )),
                ),
                // Card(
                //   semanticContainer: true,
                //   clipBehavior: Clip.antiAliasWithSaveLayer,
                //   child: Column(children: <Widget>[
                //     Image.asset(
                //       'assets/images/wikrama.jpg',
                //       fit: BoxFit.fill,
                //     ),
                //     Text("SMK WIKRAMA BOGOR")
                //   ]),
                //   shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(10.0),
                //   ),
                //   elevation: 5,
                //   margin: EdgeInsets.all(10),
                // ),
                
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