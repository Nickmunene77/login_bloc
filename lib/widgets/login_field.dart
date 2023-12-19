import 'package:flutter/material.dart';

class LoginField extends StatelessWidget {
  const LoginField({super.key, required this.hint});

  final String hint;

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
          padding:
              const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5, top: 5),
          child: TextFormField(
            decoration: InputDecoration(
              //add backround color black
              fillColor: Colors.black,

              border: InputBorder.none,
              hintText: (hint),
              hintStyle: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ));
  }
}
