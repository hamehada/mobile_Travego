import 'package:flutter/material.dart';
import 'package:trevago/pages/home_page.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  const MyButton({super.key, required this.onTap});

  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return HomePage();
          }));
        },
        child: Container(
          padding: const EdgeInsets.all(25),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Center(
            child: Text(
              "Sign In",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ));
  }
}
