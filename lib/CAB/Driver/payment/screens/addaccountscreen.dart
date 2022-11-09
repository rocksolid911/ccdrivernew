import 'package:ccdriver/CAB/Driver/payment/screens/existeduserpayment.dart';
import 'package:flutter/material.dart';

class AddAccountScreen extends StatefulWidget {
  const AddAccountScreen({Key? key}) : super(key: key);

  @override
  State<AddAccountScreen> createState() => _AddAccountScreenState();
}

class _AddAccountScreenState extends State<AddAccountScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Form(
        key: _formKey,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
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
            actions: [
              CircleAvatar(
                backgroundColor: Colors.grey,
                child: IconButton(
                  icon: Icon(Icons.info_outline, color: Colors.black),
                  onPressed: () {},
                ),
              ),
              SizedBox(width: 16),
            ],
          ),
          body:Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Text("Account Number",
                      style: Theme.of(context).textTheme.bodyMedium),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFF1F1F1),
                    labelText: "Account Number",
                    labelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Text("Re-enter Account Number",
                      style: Theme.of(context).textTheme.bodyMedium),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFF1F1F1),
                    labelText: "Re-enter Account Number",
                    labelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Text("Bank Branch",
                      style: Theme.of(context).textTheme.bodyMedium),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFF1F1F1),
                    labelText: "Select your Branch",
                    labelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Text("IFSC Code",
                      style: Theme.of(context).textTheme.bodyMedium),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFF1F1F1),
                    labelText: "Enter IFSC code",
                    labelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                    child:ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).colorScheme.primary,
                        textStyle: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentScreen()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                        child: Text("Add Account",
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}
