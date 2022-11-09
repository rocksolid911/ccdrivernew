import 'package:ccdriver/CAB/Driver/profile/screens/Documents.dart';
import 'package:ccdriver/CAB/Driver/profile/screens/adddetails.dart';
import 'package:ccdriver/CAB/Driver/profile/screens/appsettings.dart';
import 'package:ccdriver/CAB/Driver/profile/screens/editdoc.dart';
import 'package:ccdriver/CAB/Driver/profile/screens/securityservice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class ProfileDriver extends StatefulWidget {
  const ProfileDriver({Key? key}) : super(key: key);

  @override
  State<ProfileDriver> createState() => _ProfileDriverState();
}

class _ProfileDriverState extends State<ProfileDriver> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text("Profile",
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.5), BlendMode.srcOver),
                          image: AssetImage("assets/aboutus.jpeg"),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.04,
                  left: MediaQuery.of(context).size.width * 0.37,
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.1,
                    backgroundImage: AssetImage("assets/userprofile.jpeg"),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.15,
                  left: MediaQuery.of(context).size.width * 0.3,
                  child: Text("James Noriega",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  //row with 3 columns
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text("4.9",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              Text("0",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text("1256",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              Text("0",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text("10",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              Text("0",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Text("250 trips over 3 months",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text("tell customer about your self",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0,bottom: 30),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.grey),
                      ),
                        onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>AddDetails()));
                        },
                        child: Text(
                          "Add Details",
                          style: TextStyle(color: Colors.black),
                        )),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Text("About Cab & Cargo",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Image(
                      image: AssetImage("assets/aboutus.jpeg"),
                      height: MediaQuery.of(context).size.height * 0.3,),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(lorem(paragraphs: 1, words: 50),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                           )),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      child: Text("Additional Options",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>EditDoc()));
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.edit,color: Colors.black,),
                        SizedBox(width: 10,),
                        Text("Edit Documents",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                        ),

                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DocumentScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Row(
                        children:  const [
                          Icon(Icons.file_copy,color: Colors.black,),
                          SizedBox(width: 10,),
                          Text("Documents",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),

                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Row(
                      children: const [Icon(Icons.local_hospital,color: Colors.black,),
                        SizedBox(width: 10,),
                        Text("Insurance",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),

                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SecurityService()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Row(
                        children: const [Icon(Icons.security,color: Colors.black,),
                          SizedBox(width: 10,),
                          Text("Security & privacy",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),

                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AppSetting()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Row(
                        children: const [Icon(Icons.settings,color: Colors.black,),
                          SizedBox(width: 10,),
                          Text("App Settings",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),

                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Row(
                      children: const [Icon(Icons.logout,color: Colors.red,),
                        SizedBox(width: 10,),
                        Text("LOG out",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),

                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,

                  )
                ],

              ),
            ),
          ],
        ),
      ),
    ));
  }
}
