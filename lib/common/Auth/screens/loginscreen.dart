import 'package:ccdriver/common/Auth/controller/auth_controller.dart';
import 'package:ccdriver/common/Auth/screens/passwordscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/auth_button.dart';
import '../widgets/primary_button.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
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
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: AuthButton(
                    assetUrl: 'assets/googlelogo.png',
                    labelText: 'Continue with google',
                  ),
                ),
                const AuthButton(
                  assetUrl: 'assets/apple_logo.png',
                  labelText: 'Continue with apple',
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Row(
                    children: const [
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 2,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text("Or"),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 2,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextFormField(
                    controller: authController.nameController,
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.greenAccent, width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 2.0),
                      ),
                      hintText: 'Mobile Number',
                    ),
                  ),
                ),
                PrimaryButton(
                  label: 'Continue',
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PassWordScreen()));
                  },
                ),
                RadioListTile(
                  value: 1,
                  groupValue: 1,
                  toggleable: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  onChanged: (value) {},
                  title: const Text("Customer"),
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
          ),
        ),
      ),
    );
  }
}
