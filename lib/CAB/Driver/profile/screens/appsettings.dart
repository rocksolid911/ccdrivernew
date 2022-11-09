import 'package:flutter/material.dart';

class AppSetting extends StatefulWidget {
  const AppSetting({Key? key}) : super(key: key);

  @override
  State<AppSetting> createState() => _AppSettingState();
}

class _AppSettingState extends State<AppSetting> {
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
        title: const Text("App Settings",
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
                  Icon(Icons.volume_down),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("Sound and Voice",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                  ),
                  Spacer(),
                  Text("on",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                  Icon(Icons.arrow_forward_ios_sharp),
                ],
              ),
            ),
            Divider(thickness: 2,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14.0),
              child: Row(
                children: [
                  Icon(Icons.navigation_sharp),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("Navigation",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                  ),
                  Spacer(),
                  Text("GoogleMap",style: TextStyle(fontSize: 18,),),
                  //Icon(Icons.notifications_off),
                ],
              ),
            ),
            Divider(thickness: 2,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14.0),
              child: Row(
                children: [
                  Icon(Icons.volume_down),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("Notification",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                  ),
                  Spacer(),
                  Text("on",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
            Divider(thickness: 2,),
          ],
        ),
      ),
    ));
  }
}
