import 'package:flutter/material.dart';

class Articlespage extends StatelessWidget {
  const Articlespage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('articals'),
      ),
      body: Center(
        child: Text('know whats around you'),
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
