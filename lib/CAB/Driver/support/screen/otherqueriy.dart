import 'package:ccdriver/CAB/Driver/Home/screen/DriverHome.dart';
import 'package:flutter/material.dart';

class OtherHelp extends StatefulWidget {
  const OtherHelp({Key? key}) : super(key: key);

  @override
  State<OtherHelp> createState() => _OtherHelpState();
}

class _OtherHelpState extends State<OtherHelp> {
  final _formKey2 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Form(
        key: _formKey2,
        child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: Text("Help & Support",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ),
            body:Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text("Full Name",
                        style: Theme.of(context).textTheme.bodyMedium),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFFF1F1F1),
                      labelText: "Enter Full Name",
                      labelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text("Email",
                        style: Theme.of(context).textTheme.bodyMedium),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFFF1F1F1),
                      labelText: "Enter Email",
                      labelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text("Select Reason",
                        style: Theme.of(context).textTheme.bodyMedium),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFFF1F1F1),
                      labelText: "Select your Reason",
                      labelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text("Message",
                        style: Theme.of(context).textTheme.bodyMedium),
                  ),
                  TextFormField(
                    minLines: 5,
                    maxLines: 15,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFFF1F1F1),
                      labelText: "write your message",
                      labelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child:ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Theme.of(context).colorScheme.primary,
                          textStyle: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>DriverHome()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                          child: Text("Add Account",
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
        ),
      ),
    );
  }
}
