import 'package:ccdriver/CAB/Driver/payment/screens/addaccountscreen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NewUpayment extends StatefulWidget {
  const NewUpayment({Key? key}) : super(key: key);

  @override
  State<NewUpayment> createState() => _NewUpaymentState();
}

class _NewUpaymentState extends State<NewUpayment> {
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
        title: Text("Payment",
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: [
          Lottie.asset('assets/cards.json'),
          Text("Nothing For Now",
              style: Theme.of(context).textTheme.bodyMedium),
          Text("Complete Your First ride To enable Payment",
              style: Theme.of(context).textTheme.subtitle2),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddAccountScreen(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 12.0),
                child:
                    Text("Add Account", style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.16),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            // color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text("Get your first tripand earn money",
                      style: Theme.of(context).textTheme.bodyMedium),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(
                        Colors.yellow),
                    shape: MaterialStateProperty.all<
                        RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                  onPressed: () {

                  },
                  child:
                      Text("Get Trip", style: TextStyle(color: Colors.white)),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
