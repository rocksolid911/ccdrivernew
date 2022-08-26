import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final String assetUrl;
  final String labelText;
  const AuthButton({
    Key? key, required this.assetUrl, required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.07,
      child: ElevatedButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          primary: Colors.grey,
          side: const BorderSide(color: Colors.grey, width: 2),
          padding: const EdgeInsets.all(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage(assetUrl), height: 20),
             SizedBox(width: 10),
             Text(labelText),
          ],
        ),
      ),
    );
  }
}
