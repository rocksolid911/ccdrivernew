import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class SecurityService extends StatefulWidget {
  const SecurityService({Key? key}) : super(key: key);

  @override
  State<SecurityService> createState() => _SecurityServiceState();
}

class _SecurityServiceState extends State<SecurityService> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text("Security & Service",
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey[200],
            child: IconButton(
              icon: Icon(Icons.info_outline, color: Colors.black),
              onPressed: () {},
            ),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("2-step verification",style: TextStyle(fontSize: 18,),),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.7,
                            child: Text(lorem(paragraphs: 1,words: 8),style: TextStyle(fontSize: 12,color: Colors.grey),)),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text("on",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                  Icon(Icons.arrow_forward_ios_sharp),
                  //Icon(Icons.notifications_off),
                ],
              ),
            ),

            Container(
              color: Colors.red[100],
              height: MediaQuery.of(context).size.height*0.1,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 14.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Delete Account",style: TextStyle(fontSize: 18,color: Colors.red),),
                          SizedBox(
                            width: MediaQuery.of(context).size.width*0.7,
                              child: Text(lorem(paragraphs: 1,words: 6),style: TextStyle(fontSize: 12,color: Colors.grey),)),
                        ],
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    ));
  }
}
