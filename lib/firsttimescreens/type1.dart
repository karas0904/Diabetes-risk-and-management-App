import 'package:flutter/material.dart';
import 'package:diabeets_app/bottom_navigation.dart';

class Type1DiabetesInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Type-1 DIABETES',
          style: TextStyle(
              fontFamily: 'Lexend', fontSize: 25, fontWeight: FontWeight.w200),
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: Text(
              'Information needed for predictions.',
              style: TextStyle(fontSize: 18), // Adjust text style as needed
            ),
          ),
          Align(
            alignment:
                Alignment.bottomRight, // Align the button to the bottom right
            child: Padding(
              padding: const EdgeInsets.all(30.0), // Add padding from edges
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xFF4E92A8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: BorderSide(color: Colors.white, width: 2),
                  minimumSize: Size(100, 50),
                ),
                child: Text(
                  'NEXT',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Bungee', fontSize: 17),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavigationBarExample(),
                      ));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
