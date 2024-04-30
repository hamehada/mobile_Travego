import 'package:flutter/material.dart';
import 'package:trevago/pages/home_page.dart';
import 'package:trevago/pages/login_page.dart';
import 'package:trevago/pages/signup_page.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("lib/images/city1.jpg"),
          fit: BoxFit.cover,
          opacity: 0.7,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 200, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Wellcome to",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "TravaGO",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Selamat Datang Di Platform Terbaik. TraveGO Siap Mengantarmu Ke Destinasi Impian",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                "Bersiaplah Untuk Perjalanan Tak Terlupakan Bersama Kami.",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Image(
                image: AssetImage("lib/images/logo.png"),
              ),
              const SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SigInPage())),
                    child: const Text('login'),
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.white.withOpacity(0.25),
                        textStyle: const TextStyle(
                            fontSize: 24, fontStyle: FontStyle.italic)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
