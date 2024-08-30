import 'package:diabeets_app/articles.dart';
import 'package:diabeets_app/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:diabeets_app/profile.dart';
import 'package:diabeets_app/reports.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int selectedindex = 0;
  PageController pageController = PageController();

  void onTapped(int index) {
    setState(() {
      selectedindex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          Homescreen(), // Correctly reference the HomeScreen class
          Articlespage(), // Ensure the class name matches your file
          Reportpage(), // Ensure the class name matches your file
          Profilepage(), // Ensure the class name matches your file
        ],
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white, // Background color of the BottomNavigationBar
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(173, 157, 155, 155),
              blurRadius: 20,
              offset: Offset(8, 20),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'HOME',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.article),
                label: 'Articles',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart),
                label: 'Reports',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            currentIndex: selectedindex,
            selectedItemColor: const Color.fromARGB(255, 32, 14, 50),
            unselectedItemColor: const Color.fromARGB(255, 160, 164, 171),
            onTap: onTapped,
          ),
        ),
      ),
    );
  }
}
