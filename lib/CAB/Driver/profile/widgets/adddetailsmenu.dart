import 'package:flutter/material.dart';

class AddDetailsMenu extends StatelessWidget {
  final String name;
  final IconData icon;
  const AddDetailsMenu({
    Key? key, required this.name, required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(icon, color: Colors.black),
          Text("Describe Yourself In a few words",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          Icon(Icons.add, color: Colors.black),
        ],
      ),
    );
  }
}