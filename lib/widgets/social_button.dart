import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  SocialButton({super.key, required this.icon, required this.text});
  //want to add two required fields,  one for the icon and one for the text

  //want to add two required fields,  one for the icon and one for the text
  final IconData icon;

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 0, 0, 21),
        border: Border.all(color: const Color.fromARGB(255, 226, 218, 218)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Icon(icon, color: Colors.white),
            SizedBox(width: 10),
            Text(text,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
