import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  final  Function onPressed;
   const PrimaryButton({
    Key? key, required this.label, required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.07,
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