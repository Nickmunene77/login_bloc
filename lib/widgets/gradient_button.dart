import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        // make width take 60% of screen
        width: MediaQuery.of(context).size.width * 0.7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          //this is color of border
          border: Border.all(
              color: const Color.fromARGB(
                  255, 226, 218, 218)), //this is color of border
          //add background with gradient pink and yellow
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 103, 19, 81),
              Color.fromARGB(64, 142, 5, 30),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ));
  }
}
