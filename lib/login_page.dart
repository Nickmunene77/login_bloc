import 'package:flutter/material.dart';
import 'package:login_bloc/widgets/gradient_button.dart';
import 'package:login_bloc/widgets/login_field.dart';
import 'package:login_bloc/widgets/social_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //this is to avoid overflow error when keyboard pops up

      //scaffold backround to be a gradient of dark blue
      //MAKE BACKGROUND HAVE SOME CIRCLES ON IT TO MAKE IT LOOK LIKE A GALAXY

      backgroundColor: Color.fromARGB(255, 0, 0, 21),
      appBar: AppBar(
          title: Text('Login Page'),
          backgroundColor: Color.fromARGB(183, 26, 5, 65),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          )),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            //want to make everyting be centered in the middle of the screen so wrap in a column and add a sized box
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Text(
                'Login',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 30,
                  color: const Color(0xff000000),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              SocialButton(icon: Icons.facebook, text: "Continue with Google"),
              SizedBox(height: 20),
              SocialButton(
                  icon: Icons.facebook, text: "Continue with Facebook"),
              SizedBox(height: 20),
              Text(
                'or',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              LoginField(hint: "Email"),
              SizedBox(height: 20),
              LoginField(hint: "Password"),
              SizedBox(height: 20),
              GradientButton(
                text: "Login",
              )
            ],
          ),
        ),
      ),
    );
  }
}
