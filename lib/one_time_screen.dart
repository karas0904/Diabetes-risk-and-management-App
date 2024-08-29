import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_screen.dart';

class OneTimeScreenForInfo extends StatefulWidget {
  @override
  _OneTimeScreenForInfoState createState() => _OneTimeScreenForInfoState();
}

class _OneTimeScreenForInfoState extends State<OneTimeScreenForInfo> {
  final _controller = TextEditingController();

  Future<void> _completeSetup() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('hasCompletedSetup', true);

    // Navigate to HomeScreen after setup is complete
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => HomeScreen(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setup'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Enter your details'),
            ),
            ElevatedButton(
              onPressed: _completeSetup,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
