import 'package:flutter/material.dart';

class Reportpage extends StatelessWidget {
  const Reportpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Daily reports'),
      ),
      body: Center(
        child: Text('please work more!!'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your action here
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.black, // Custom background color
        elevation: 10.0, // Custom elevation
        shape: RoundedRectangleBorder(
          // Custom shape
          borderRadius: BorderRadius.circular(100.0),
        ),
      ),
    );
  }
}
