import 'package:flutter/material.dart';

import '../widgets/documentlistview.dart';

class DocumentScreen extends StatefulWidget {
  const DocumentScreen({Key? key}) : super(key: key);

  @override
  State<DocumentScreen> createState() => _DocumentScreenState();
}

class _DocumentScreenState extends State<DocumentScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
        title: const Text("Documents",
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
      body: ListView.builder(
        itemCount: 12,
        itemBuilder: (context, index) {
          return DocumentListView(isError: false,);

        },
      ),
    ));
  }
}


