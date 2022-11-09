import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import '../widgets/editdocoption.dart';

class EditDoc extends StatefulWidget {
  const EditDoc({Key? key}) : super(key: key);

  @override
  State<EditDoc> createState() => _EditDocState();
}

class _EditDocState extends State<EditDoc> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text("Edit Documents",
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/userprofile.jpeg"),
                  radius: MediaQuery.of(context).size.width * 0.22,
                  backgroundColor: Colors.grey,
                 // child: Image.asset("assets/userprofile.jpeg"),
                ),
                Column(children: [
                  Text("First Name",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey)),
                  Text("John ",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  SizedBox(height: 40),
                  Text("Last Name",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  Text("Doeg",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),

                ],),

              ],
            ),
            EditDocOption(title: 'Phone No', subtitle: '+91 0098766456',),
            EditDocOption(title: 'email Id', subtitle: 'test@johndoe.gmail.com',),
            EditDocOption(title: 'Password', subtitle: '********',),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Address",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey)),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Text(lorem(paragraphs: 1, words: 10),
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}


