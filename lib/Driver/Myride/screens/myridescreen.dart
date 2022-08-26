import 'package:flutter/material.dart';

class MyRide extends StatefulWidget {
  const MyRide({Key? key}) : super(key: key);

  @override
  State<MyRide> createState() => _MyRideState();
}

class _MyRideState extends State<MyRide> {
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
        title: const Text("My Ride",
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                color: Colors.transparent,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage("assets/userprofile.jpeg"),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Message",style: Theme.of(context).textTheme.subtitle2),
                            Text("Message",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Message",style: Theme.of(context).textTheme.subtitle2),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("\$200.00",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                    ),
                  ],
                ),
              ),
              Divider(thickness: 2,),
            ],
          );
        },
      ),
    ));
  }
}
