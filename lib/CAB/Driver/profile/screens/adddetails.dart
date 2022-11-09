import 'package:flutter/material.dart';

import '../widgets/adddetailsmenu.dart';

class AddDetails extends StatefulWidget {
  const AddDetails({Key? key}) : super(key: key);

  @override
  State<AddDetails> createState() => _AddDetailsState();
}

class _AddDetailsState extends State<AddDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
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
                top: MediaQuery.of(context).size.height * 0.08,
                left: MediaQuery.of(context).size.width * 0.37,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.1,
                      backgroundImage: AssetImage("assets/userprofile.jpeg"),
                    ),
                    Text("James rayne",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width * 0.05,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 16.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);

                },
                          child: Icon(Icons.arrow_back_ios, color: Colors.white)),
                      Text("Profile",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.6),

                      Align(
                        alignment: Alignment.topRight,
                          child: Icon(Icons.edit, color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          AddDetailsMenu(name: "Describe Yourself In a few words", icon:Icons.ac_unit_outlined,),
          Divider(thickness: 2,),
          AddDetailsMenu(name: "Set Language you Know", icon:Icons.browser_not_supported_sharp,),
          Divider(thickness: 2,),
          AddDetailsMenu(name: "Sharer Where are you from", icon:Icons.home_filled,),
          Divider(thickness: 2,),
        ],
      ),
    ));
  }
}


