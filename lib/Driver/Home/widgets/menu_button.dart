import 'package:ccdriver/Driver/Myride/screens/myridescreen.dart';
import 'package:ccdriver/Driver/support/screen/supportscreen.dart';
import 'package:ccdriver/common/aboutus.dart';
import 'package:ccdriver/common/messages.dart';
import 'package:flutter/material.dart';

import '../../payment/screens/newuserpayment.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          builder: (context) => Container(
            height: MediaQuery.of(context).size.height * 0.75,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(25.0),
                topRight: const Radius.circular(25.0),
              ),
            ),
            child: Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.height * 0.02),
                      child: Text("Menu",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.grey),)),
                  Container(color: Color(0xFFEEEEEE),height: 30,),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>MyRide(),
                        ),
                      );
                    },
                    child: Container(
                        margin: EdgeInsets.fromLTRB(
                            MediaQuery.of(context).size.height * 0.02,15,0,0),
                        child: Text("My Ride",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                  ),
                  Divider(),
                  Container(
                      margin: EdgeInsets.fromLTRB(
                          MediaQuery.of(context).size.height * 0.02,15,0,0),
                      child: Text("My Reward",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                  Divider(),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Message()));

                    },
                    child: Container(
                        margin: EdgeInsets.fromLTRB(
                            MediaQuery.of(context).size.height * 0.02,15,0,0),
                        child: Text("Message",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>NewUpayment()));

                    },
                    child: Container(
                        margin: EdgeInsets.fromLTRB(
                            MediaQuery.of(context).size.height * 0.02,15,0,0),
                        child: Text("Payment",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SupportHelp()));

                    },
                    child: Container(
                        margin: EdgeInsets.fromLTRB(
                            MediaQuery.of(context).size.height * 0.02,15,0,0),
                        child: Text("Support & Help",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                  ),
                  Divider(),
                  Container(
                      margin: EdgeInsets.fromLTRB(
                          MediaQuery.of(context).size.height * 0.02,15,0,0),
                      child: Text("Rating",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                  Divider(),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutUs()));

                    },
                    child: Container(
                        margin: EdgeInsets.fromLTRB(
                            MediaQuery.of(context).size.height * 0.02,15,0,0),
                        child: Text("About Us",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                  ),
                  Divider(),
                ],
              ),
            ),
          ),
        );
      },
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: MediaQuery.of(context).size.width * 0.06,
        child: const Icon(Icons.widgets,
            color: Colors.black),
      ),
    );
  }
}