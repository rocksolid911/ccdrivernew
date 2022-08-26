import 'package:ccdriver/Driver/support/screen/otherqueriy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import 'package:lottie/lottie.dart';

class SupportHelp extends StatefulWidget {
  const SupportHelp({Key? key}) : super(key: key);

  @override
  State<SupportHelp> createState() => _SupportHelpState();
}

class _SupportHelpState extends State<SupportHelp> {
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
          title: const Text("Support & Help",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
        ),
        body: Column(
          children: [
            Lottie.asset(
              'assets/help.json',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
            ),
          ExpandedTileList.builder(
          itemCount: 3,
          itemBuilder: (context, index, controller) {
            return ExpandedTile(
              theme:  ExpandedTileThemeData(
                headerColor: index==index?Colors.transparent:Colors.white,
                headerPadding: EdgeInsets.all(24.0),
                headerSplashColor: Colors.red,
                //
                contentBackgroundColor: Colors.blue,
                contentPadding: EdgeInsets.all(24.0),
                contentRadius: 12.0,
              ),
              controller:
              index == 2 ? controller.copyWith(isExpanded: true) : controller,
              title: Text("this is the title $index"),
              content: Container(
                color: Colors.red,
                child: Column(
                  children: [
                    const Center(
                      child: Text(
                          "This is the content!ksdjfl kjsdflk sjdflksjdf lskjfd lsdkfj  ls kfjlsfkjsdlfkjsfldkjsdflkjsfdlksjdflskdjf lksdjflskfjlsfkjslfkjsldfkjslfkjsldfkjsflksjflskjflskfjlsfkjslfkjsflksjflskfjlsfkjslfkjslfkjslfkjslfkjsldfkjsdf"),
                    ),
                    MaterialButton(
                      onPressed: () {
                        controller.collapse();
                      },
                      child: Text("close it!"),
                    )
                  ],
                ),
              ),
              onTap: () {
                debugPrint("tapped!!");
              },
              onLongTap: () {
                debugPrint("looooooooooong tapped!!");
              },
            );
          },
        ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: ElevatedButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            OtherHelp()));
              },child: Text("Other queried",style: TextStyle(color: Colors.white),),),
            )
          )
          ],
        ),
      ),
    );
  }
}
