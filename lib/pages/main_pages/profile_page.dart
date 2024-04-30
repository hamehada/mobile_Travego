import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Stack(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 55.0,
                      child: ClipOval(
                        child: Image.asset('lib/images/apple.png'),
                      ),
                    ),
                    Positioned(
                      bottom: 10.0,
                      right: 10.0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              SizedBox(height: 20.0),
              Text(
                'Full Name',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(
                      10), // Set background color to light grey
                ),
                padding: EdgeInsets.all(10.0), // Add padding around the text
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Andrew Noland',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Full Name',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(
                      10), // Set background color to light grey
                ),
                padding: EdgeInsets.all(10.0), // Add padding around the text
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Andrew Noland',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
