import 'package:flutter/material.dart';

class DocumentListView extends StatelessWidget {
  final bool isError ;
  const DocumentListView({
    Key? key, required this.isError,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              color: Color(0xFFEAFFEA),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          isError?Text(
                            "Pending Documents",
                            style: Theme.of(context).textTheme.subtitle2?.copyWith(color: Colors.red),
                          ):Text(
                            "Notification",
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          Text("Notification",
                              style:
                              TextStyle(fontWeight: FontWeight.bold)),
                          Visibility(
                            visible: isError,
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width ,
                              color: Colors.red[200],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Material(
                        color: Colors.transparent,
                        shape: CircleBorder(
                            side: BorderSide(color: Colors.green)
                        ),
                        child: Icon(Icons.check, color: Colors.green,),
                      )
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}