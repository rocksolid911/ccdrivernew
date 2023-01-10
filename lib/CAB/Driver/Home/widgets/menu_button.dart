import 'package:ccdriver/CAB/Driver/Myride/screens/myridescreen.dart';
import 'package:ccdriver/CAB/Driver/support/screen/supportscreen.dart';
import 'package:ccdriver/common/aboutus.dart';
import 'package:ccdriver/common/messages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../common/Auth/screens/loginscreen.dart';
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
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
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
                      child: const Text(
                        "Menu",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.grey),
                      )),
                  Container(
                    color: const Color(0xFFEEEEEE),
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyRide(),
                        ),
                      );
                    },
                    child: Container(
                        margin: EdgeInsets.fromLTRB(
                            MediaQuery.of(context).size.height * 0.02,
                            15,
                            0,
                            0),
                        child: const Text(
                          "My Ride",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )),
                  ),
                  const Divider(),
                  Container(
                      margin: EdgeInsets.fromLTRB(
                          MediaQuery.of(context).size.height * 0.02, 15, 0, 0),
                      child: const Text(
                        "My Reward",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )),
                  const Divider(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Message()));
                    },
                    child: Container(
                        margin: EdgeInsets.fromLTRB(
                            MediaQuery.of(context).size.height * 0.02,
                            15,
                            0,
                            0),
                        child: const Text(
                          "Message",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )),
                  ),
                  const Divider(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NewUpayment()));
                    },
                    child: Container(
                        margin: EdgeInsets.fromLTRB(
                            MediaQuery.of(context).size.height * 0.02,
                            15,
                            0,
                            0),
                        child: const Text(
                          "Payment",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )),
                  ),
                  const Divider(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SupportHelp()));
                    },
                    child: Container(
                        margin: EdgeInsets.fromLTRB(
                            MediaQuery.of(context).size.height * 0.02,
                            15,
                            0,
                            0),
                        child: const Text(
                          "Support & Help",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )),
                  ),
                  const Divider(),
                  Container(
                      margin: EdgeInsets.fromLTRB(
                          MediaQuery.of(context).size.height * 0.02, 15, 0, 0),
                      child: const Text(
                        "Rating",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )),
                  const Divider(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AboutUs()));
                    },
                    child: Container(
                        margin: EdgeInsets.fromLTRB(
                            MediaQuery.of(context).size.height * 0.02,
                            15,
                            0,
                            0),
                        child: const Text(
                          "About Us",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )),
                  ),
                  const Divider(),
                  GestureDetector(
                    onTap: () async {
                      SharedPreferences pref =
                          await SharedPreferences.getInstance();

                      pref.clear();
                      Get.offAll(() => const LogIn());
                    },
                    child: Container(
                        margin: EdgeInsets.fromLTRB(
                            MediaQuery.of(context).size.height * 0.02,
                            15,
                            0,
                            0),
                        child: const Text(  
                          "Log Out",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: MediaQuery.of(context).size.width * 0.06,
        child: const Icon(Icons.widgets, color: Colors.black),
      ),
    );
  }
}
