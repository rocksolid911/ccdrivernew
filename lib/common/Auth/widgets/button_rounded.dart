import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String label;
  final  Function onPressed;
  const SecondaryButton({
    Key? key, required this.label, required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.07,
      width: MediaQuery.of(context).size.width*0.04,
      child: ElevatedButton(
        onPressed: ()=>onPressed(),
        style: TextButton.styleFrom(
          primary: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [Text(label)],
        ),
      ),
    );
  }
}