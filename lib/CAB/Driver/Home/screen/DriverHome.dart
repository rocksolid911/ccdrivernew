import 'package:ccdriver/CAB/Driver/notification/screen/notificationscreen.dart';
import 'package:ccdriver/CAB/Driver/profile/screens/profilescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../widgets/menu_button.dart';

class DriverHome extends StatefulWidget {
  const DriverHome({Key? key}) : super(key: key);

  @override
  State<DriverHome> createState() => _DriverHomeState();
}

class _DriverHomeState extends State<DriverHome> {
  bool isReminder = true;
  bool isStartMenu = true;
  bool isAcceptRide = false;
  bool isNavigate = false;
  bool isRideStart = false;
  bool isOTP = false;
  bool isRating = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.network(
                "https://cdn.vox-cdn.com/thumbor/52wMLCpqUS3gdBIVN_igAa8yKRU=/30x0:941x607/1200x800/filters:focal(30x0:941x607)/cdn.vox-cdn.com/assets/1349871/screenshot-20120910-085923.png",
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity),
            // upper section
            Container(
              color: Colors.transparent,
              height: MediaQuery.of(context).size.height * 0.25,
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width,
                    color: Theme.of(context).colorScheme.onPrimary,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("Get exiting offer on your ride",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondary)),
                        ),
                        IconButton(
                          icon: Icon(Icons.arrow_right_alt_rounded,
                              color: Theme.of(context).colorScheme.onSecondary),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileDriver()));
                          },
                          child: CircleAvatar(
                            radius: MediaQuery.of(context).size.width * 0.07,
                            backgroundImage: const NetworkImage(
                                "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80"),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.25,
                          child: isStartMenu
                              ? ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.black),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    "300.00",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(color: Colors.white),
                                  ),
                                )
                              : Container(),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        NotificationScreen()));
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: MediaQuery.of(context).size.width * 0.07,
                            child: const Icon(Icons.notifications,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: isReminder,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.85,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.onPrimary,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(Icons.car_crash,
                                color:
                                    Theme.of(context).colorScheme.onSecondary),
                            onPressed: () {},
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Heading of Reminder",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(color: Colors.white)),
                              Text("Description of Reminder",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(color: Colors.white)),
                            ],
                          ),
                          IconButton(
                            icon: Icon(Icons.close, color: Colors.red),
                            onPressed: () {
                              setState(() {
                                isReminder = !isReminder;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // lower section
            Visibility(
              visible: isStartMenu,
              child: Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  color: Colors.transparent,
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: MediaQuery.of(context).size.width * 0.06,
                          child: const Icon(Icons.security, color: Colors.red),
                        ),
                        InkWell(
                          onTap: () {
                            buildShowDialog(context);
                          },
                          child: CircleAvatar(
                            backgroundColor: const Color(0xFFA597FF),
                            radius: MediaQuery.of(context).size.width * 0.095,
                            child: CircleAvatar(
                              backgroundColor:
                                  Theme.of(context).colorScheme.onPrimary,
                              radius: MediaQuery.of(context).size.width * 0.08,
                              child: Text(
                                "Go",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        MenuButton(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            //start of accept ride
            Visibility(
                visible: isAcceptRide,
                child: Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    //color: Colors.white.withOpacity(0.5),
                    height: MediaQuery.of(context).size.height * 0.25,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: MenuButton(),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius:
                                    MediaQuery.of(context).size.width * 0.06,
                                child: const Icon(Icons.security,
                                    color: Colors.red),
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<
                                          Color>(
                                      Theme.of(context).colorScheme.onPrimary),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    isNavigate = true;
                                    isAcceptRide = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text(
                                    "Navigate",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18.0, vertical: 30.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          text: "0.5",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium
                                              ?.copyWith(color: Colors.green),
                                          children: const <TextSpan>[
                                            TextSpan(
                                                text: '. 1.5 km',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                            // can add more TextSpans here...
                                          ],
                                        ),
                                      ),
                                      Text(
                                        "Pickup Location",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium,
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.phone,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
            //isnavigate = true
            Visibility(
              visible: isNavigate,
              child: Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  //color: Colors.white.withOpacity(0.5),
                  height: MediaQuery.of(context).size.height * 0.28,
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: MediaQuery.of(context).size.width * 0.06,
                            child:
                                const Icon(Icons.security, color: Colors.red),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: MenuButton(),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 18.0, vertical: 15.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Jenny Ray",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                        //two elevated button with rounded border
                                        ElevatedButton(
                                          style: ButtonStyle(
                                            elevation: MaterialStateProperty.all<
                                                    double>(0.0),
                                            backgroundColor: MaterialStateProperty.all<
                                                    Color>(
                                                Colors.transparent),
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(18.0),
                                                side: BorderSide(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          onPressed: () {},
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8.0),
                                            child: Text(
                                              "Pickup",
                                              style: TextStyle(color: Colors.black),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width * 0.05,
                                        ),
                                        ElevatedButton(
                                          style: ButtonStyle(
                                            elevation: MaterialStateProperty.all<
                                                    double>(0.0),
                                            backgroundColor: MaterialStateProperty.all<
                                                Color>(
                                                Colors.transparent),
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(18.0),
                                                side: BorderSide(
                                                  color: Colors.black,
                                                  width: 1.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          onPressed: () {},
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8.0),
                                            child: Text(
                                              "01:30",
                                              style: TextStyle(color: Colors.black),
                                            ),
                                          ),
                                        ),
                                      ],)
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.grey[300],
                                      radius: MediaQuery.of(context).size.width * 0.06,
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.phone,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.01,
                              ),
                              //start trip button
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height: MediaQuery.of(context).size.height * 0.06,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<
                                            Color>(
                                        Theme.of(context)
                                            .colorScheme
                                            .onPrimary),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      isOTP = true;
                                    });
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text(
                                      "START TRIP",
                                      style: TextStyle(color: Colors.white, fontSize: 20),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
            //otp
            Visibility(
              visible: isOTP,
              child: Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 350.0,
                  color: Colors.white, //could change this to Color(0xFF737373),
                  //so you don't have to change MaterialApp canvasColor
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(10.0),
                            topRight: const Radius.circular(10.0))),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text("Enter OTP",style: TextStyle(fontSize: 20),),
                        ),
                        OtpTextField(
                          numberOfFields: 4,
                          fieldWidth: 60,
                          borderRadius: BorderRadius.circular(10),
                          borderColor: Color(0xFF512DA8),
                          showFieldAsBox: true,
                          //runs when a code is typed in
                          onCodeChanged: (String code) {
                            //handle validation or checks here
                          },
                          //runs when every textfield is filled
                          onSubmit: (String verificationCode){
                            showDialog(
                                context: context,
                                builder: (context){
                                  return AlertDialog(
                                    title: Text("Verification Code"),
                                    content: Text('Code entered is $verificationCode'),
                                  );
                                }
                            );
                          }, // end onSubmit
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(18.0)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 8.0),
                                child: Text("1:05",style: TextStyle(fontSize: 18),),
                              ),
                            ),
                          )
                          ,),
                        SizedBox(
                          height:MediaQuery.of(context).size.height*0.07,
                          width: MediaQuery.of(context).size.width*0.9,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                ),
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    Theme.of(context)
                                        .colorScheme
                                        .onPrimary),),
                              onPressed: ()async{
                                setState(() {
                                  isNavigate = false;
                                  isOTP = false;
                                  isRideStart = true;
                                });
                              },
                              child: Text("VRIFY",style: TextStyle(color: Colors.white,fontSize: 20),)),
                        ),
                      ],
                    ),

                  ),
                ),

              ),
            ),
            //customer assistance+ride started
           Visibility(
             visible: isRideStart,
             child: Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0))),
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  height: MediaQuery.of(context).size.height * 0.55,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Trip Request",style: TextStyle(fontSize: 20),),
                            //elevated button with rounded corners
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<
                                        Color>(
                                    Colors.black),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                ),
                              ),
                              onPressed: () {
                              },
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.0),
                                child: Text(
                                  "300.00",
                                  style: TextStyle(color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal:8),
                        child: Text("Trip Info",style: TextStyle(fontSize: 16),),
                      ),
                      //row with two columns
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Pickup Location",style: TextStyle(fontSize: 12,color: Colors.grey),),
                                  Text("92 strt ,venkatesh,raipur,chattisgarh",style: TextStyle(fontSize: 16),),
                                ],
                              ),
                            ),
                            const SizedBox(width: 50,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Drop Location",style: TextStyle(fontSize: 12,color: Colors.grey),),
                                  Text("92 strt ,venkatesh,raipur,chattisgarh",style: TextStyle(fontSize: 16),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal:8,vertical: 15),
                        child: Text("Customer Info",style: TextStyle(fontSize: 16),),
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage("assets/userprofile.jpeg"),
                            ),
                            const SizedBox(width: 20,),
                            Expanded(
                              child: InkWell(
                                onTap: (){
                                  setState(() {
                                    isRating = true;
                                    isRideStart = false;
                                  });
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:  [
                                    Text("Customer info",style: TextStyle(fontSize: 12,color: Colors.grey),),
                                    Text("Warren Buffet",style: TextStyle(fontSize: 16),),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                        Text("4.8"),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: CircleAvatar(
                                  backgroundColor: Color(0xFFF2F2F2),
                                  child: IconButton(
                                    icon: Icon(Icons.phone,color: Colors.black,),
                                    onPressed: (){},
                                  ),
                                ),
                              )
                            ),
                          ],
                        ),
                      ),
                      //call for assistance button
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height*0.07,
                          width: MediaQuery.of(context).size.width*0.9,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<
                                      Color>(
                                  Colors.grey
                              ),),
                              onPressed: (){},
                              child: Text("Call for Assistance",style: TextStyle(fontSize: 16,color: Colors.white),),),
                        ),
                      ),
                      //cancel ride button
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height*0.07,
                          width: MediaQuery.of(context).size.width*0.9,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<
                                  Color>(
                                  Colors.red
                              ),),
                            onPressed: (){},
                            child: Text("Cancel Ride",style: TextStyle(fontSize: 16,color: Colors.white),),),
                        ),
                      ),
                    ],
                  ),
             ),
           ),
           ),
            //rating
            Visibility(
              visible: isRating,
              child: Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(20.0),
                          topRight: const Radius.circular(20.0))),
                  height: 350.0, //could change this to Color(0xFF737373),
                  //so you don't have to change MaterialApp canvasColor
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),

                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("how Was your ride",style: TextStyle(fontSize: 14,color: Colors.grey),),
                        Text("Warren Buffet",style: TextStyle(fontSize: 20),),
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        SizedBox(
                          height:MediaQuery.of(context).size.height*0.07,
                          width: MediaQuery.of(context).size.width*0.9,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    Colors.black),),
                              onPressed: ()async{
                                    setState(() {
                                      isRating = false;
                                      isStartMenu = true;
                                    });
                              },
                              child: Text("Rate Your Trip",style: TextStyle(color: Colors.white,fontSize: 20),)),
                        ),
                      ],
                    ),

                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> buildShowDialog(BuildContext context) {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)), //this right here
            child: Container(
              height: MediaQuery.of(context).size.height * 0.3,
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        icon: Icon(Icons.close, color: Colors.red),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "300.00",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Text("Trip request"),
                    SizedBox(
                      height: 8,
                    ),
                    Text("Drop location"),
                    Text("91, B, 1st Floor, Sector-1, Noida"),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 320.0,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isAcceptRide = true;
                            isStartMenu = false;
                          });
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "Accept Ride",
                          style: TextStyle(color: Colors.white),
                        ),
                        // : Theme.of(context).colorScheme.primary,
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
   _ratingBottomSheet(){
    showModalBottomSheet(
        context: context,
        builder: (builder){
          return StatefulBuilder(
              builder: (context, setState){
                return Container(
                  height: 350.0,
                  color: Colors.transparent, //could change this to Color(0xFF737373),
                  //so you don't have to change MaterialApp canvasColor
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(10.0),
                            topRight: const Radius.circular(10.0))),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("how Was your ride",style: TextStyle(fontSize: 14,color: Colors.grey),),
                        Text("Warren Buffet",style: TextStyle(fontSize: 20),),
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                        SizedBox(
                          height:MediaQuery.of(context).size.height*0.07,
                          width: MediaQuery.of(context).size.width*0.9,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    Colors.black),),
                              onPressed: ()async{

                              },
                              child: Text("Rate Your Trip",style: TextStyle(color: Colors.white,fontSize: 20),)),
                        ),
                      ],
                    ),

                  ),
                );
        }
    );});
  }
}
