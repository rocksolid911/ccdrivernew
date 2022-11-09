import 'package:ccdriver/common/Auth/widgets/primary_button.dart';
import 'package:flutter/material.dart';

import '../../../CAB/Driver/Home/screen/DriverHome.dart';

class PassWordScreen extends StatefulWidget {
  const PassWordScreen({Key? key}) : super(key: key);

  @override
  State<PassWordScreen> createState() => _PassWordScreenState();
}

class _PassWordScreenState extends State<PassWordScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "CC",
            style: Theme.of(context)
                .textTheme
                .displayMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Text(
              "CAB&CARGO",
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: TextFormField(
              //controller: passTextController,
              decoration: const InputDecoration(
                  labelText: "Enter password",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    //  when the TextFormField in unfocused
                  ) ,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    //  when the TextFormField in focused
                  ) ,
                  border: UnderlineInputBorder(
                  )
              ),
              keyboardType: TextInputType.text,
              obscureText: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: PrimaryButton(label: "Continue", onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context)=>DriverHome()));
            }),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width ,
            child:Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Forgot Password?",
                style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.blue),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Text.rich(
            TextSpan(
              text: "Don't have an account?",
              style: Theme.of(context).textTheme.bodySmall,
              children: const <TextSpan>[
                TextSpan(
                    text: 'create New',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                    )),
                // can add more TextSpans here...
              ],
            ),
          )
        ],
      ),
    )));
  }
}
