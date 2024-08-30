import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: IconButton(
              color: Colors.white,
              icon: Icon(Icons.person),
              onPressed: () {},
            ),
          ),
        ],
        iconTheme: IconThemeData(
          color: Colors.white, // Set the back button color to white
        ),
      ),
    );
  }
}
