import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Spacer to push content down and avoid overflow
            SizedBox(height: 30.0), // Reduced height

            // First Container (Shorter)
            Container(
              height: 100.0, // Adjust height as needed
              color: Colors.grey[200], // Light white color
              margin: const EdgeInsets.only(
                  bottom: 8.0), // Reduced space between containers
            ),
            // Second Container (Taller)
            Container(
              height: 150.0, // Adjust height as needed
              color: Colors.grey[300], // Light white color
              margin: const EdgeInsets.only(
                  bottom: 8.0), // Reduced space between containers and boxes
            ),
          ],
        ),
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
