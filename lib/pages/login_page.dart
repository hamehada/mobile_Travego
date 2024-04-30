import 'package:flutter/material.dart';
import 'package:trevago/components/my_button.dart';
import 'package:trevago/components/my_textfield.dart';
import 'package:trevago/components/sequare_tile.dart';
import 'package:trevago/pages/home_page.dart';
import 'package:trevago/pages/signup_page.dart';
import 'package:trevago/pages/welcome_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usnrnameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade400,
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const SizedBox(
            height: 50,
          ),
          const Icon(
            Icons.lock,
            size: 60,
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            'Welcome back you\'ve been missed',
            style: TextStyle(color: Colors.grey[700], fontSize: 16),
          ),
          const SizedBox(
            height: 50,
          ),
          MyTextField(
            controller: usnrnameController,
            hintText: 'Username',
            obscureText: false,
          ),
          const SizedBox(
            height: 10,
          ),
          MyTextField(
            controller: passwordController,
            hintText: 'Password',
            obscureText: true,
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot My Password?',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          MyButton(
            onTap: signUserIn,
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'Or continue with',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SquareTile(imagePath: 'lib/images/google.png'),
              SizedBox(width: 25),
              SquareTile(imagePath: 'lib/images/apple.png'),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Not a Member?',
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(width: 10),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SigInPage()));
                  },
                  child: Text(
                    "Register Now",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ]),
      ),
    );
  }
}
