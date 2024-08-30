import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart'; // If needed
import 'firsttimescreens/one_time_screen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    _navigateAfterDelay();
  }

  Future<void> _navigateAfterDelay() async {
    await Future.delayed(Duration(seconds: 5));

    // After the delay, navigate to the OneTimeScreenForInfo
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => OneTimeScreenForInfo(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                const Color(0xFF4E92A8), // Change this to your desired color
                BlendMode.srcIn,
              ),
              child: SizedBox(
                width: 110, // Adjust width as needed
                height: 110,
                child: Lottie.asset('assets/animations/splash_logo_ani.json',
                    fit: BoxFit.contain, repeat: true, reverse: true),
              ),
            ),
            const SizedBox(
                height: 0), // Add some space between animation and text
            const Text(
              'CURA',
              style: TextStyle(
                color: Color(0xFF4E92A8),
                fontSize: 30,
                fontWeight: FontWeight.w900,
                fontFamily: 'Montserrat',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
