import 'package:flutter/material.dart';

class LoggedinPage extends StatelessWidget {
  const LoggedinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logged In'),
        backgroundColor: Color(0xFF448AFF), 
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.blueAccent,
              Colors.pink,
            ],
          ),
        ),
        child: Center(
          child: Text(
            'You are successfully logged in!',
            style: TextStyle(
              color: Colors.green, 
              fontSize: 24, 
              fontWeight: FontWeight.bold, 
            ),
          ),
        ),
      ),
    );
  }
}
