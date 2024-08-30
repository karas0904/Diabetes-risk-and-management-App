import 'package:flutter/material.dart';
import 'healthhistory.dart';

class OneTimeScreenForInfo extends StatefulWidget {
  @override
  _OneTimeScreenForInfoState createState() => _OneTimeScreenForInfoState();
}

class _OneTimeScreenForInfoState extends State<OneTimeScreenForInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'PERSONALIZATION',
              style: TextStyle(
                  fontFamily: 'Lexend',
                  fontSize: 25,
                  fontWeight: FontWeight.w200),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align everything to the start (left)
          children: [
            // Align "Basic Information." with the box
            Text('Basic Information.',
                style: TextStyle(
                    fontFamily: 'serif',
                    fontSize: 20,
                    fontWeight: FontWeight.w400)),
            SizedBox(height: 10),
            Container(
              height: 450,
              decoration: BoxDecoration(
                color: Color.fromARGB(32, 182, 192, 198), // Light grey color
                borderRadius: BorderRadius.circular(12), // Rounded corners
              ),
              padding:
                  const EdgeInsets.all(16.0), // Padding inside the container
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align children to the left
                children: [
                  const Text('Name'),
                  TextField(
                    decoration: InputDecoration(
                      hintText:
                          "eg: John Hike", // Hint text inside the text field
                      hintStyle: TextStyle(
                        fontSize: 14.0, // Font size for hint text
                        color: Colors.grey, // Color for hint text (light grey)
                      ), // Prefix text inside the text field
                      filled: true, // Enables the background color
                      fillColor: Colors.white, // White background
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(12.0), // Rounded corners
                        borderSide: BorderSide(
                          color: Colors.black, // Black border color
                          width: 1.0, // Border width
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            5.0), // Rounded corners when enabled
                        borderSide: BorderSide(
                          color: Colors.black, // Black border when enabled
                          width: 1.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            12.0), // Rounded corners when focused
                        borderSide: BorderSide(
                          color: Colors.black, // Black border when focused
                          width: 1.0,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 12.0,
                          horizontal: 16.0), // Padding inside the text field
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text('Age'),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "eg: 67", // Hint text inside the text field
                      hintStyle: TextStyle(
                        fontSize: 14.0, // Font size for hint text
                        color: Colors.grey, // Color for hint text (light grey)
                      ), // Prefix text inside the text field
                      filled: true, // Enables the background color
                      fillColor: Colors.white, // White background
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(12.0), // Rounded corners
                        borderSide: BorderSide(
                          color: Colors.black, // Black border color
                          width: 1.0, // Border width
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            5.0), // Rounded corners when enabled
                        borderSide: BorderSide(
                          color: Colors.black, // Black border when enabled
                          width: 1.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            12.0), // Rounded corners when focused
                        borderSide: BorderSide(
                          color: Colors.black, // Black border when focused
                          width: 1.0,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 12.0,
                          horizontal: 16.0), // Padding inside the text field
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text('Gender'),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "eg: Female", // Hint text inside the text field
                      hintStyle: TextStyle(
                        fontSize: 14.0, // Font size for hint text
                        color: Colors.grey, // Color for hint text (light grey)
                      ), // Prefix text inside the text field
                      filled: true, // Enables the background color
                      fillColor: Colors.white, // White background
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(12.0), // Rounded corners
                        borderSide: BorderSide(
                          color: Colors.black, // Black border color
                          width: 1.0, // Border width
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            5.0), // Rounded corners when enabled
                        borderSide: BorderSide(
                          color: Colors.black, // Black border when enabled
                          width: 1.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            12.0), // Rounded corners when focused
                        borderSide: BorderSide(
                          color: Colors.black, // Black border when focused
                          width: 1.0,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 12.0,
                          horizontal: 16.0), // Padding inside the text field
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text('Height (in ft)'),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "eg: 5'5", // Hint text inside the text field
                      hintStyle: TextStyle(
                        fontSize: 14.0, // Font size for hint text
                        color: Colors.grey, // Color for hint text (light grey)
                      ), // Prefix text inside the text field
                      filled: true, // Enables the background color
                      fillColor: Colors.white, // White background
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(12.0), // Rounded corners
                        borderSide: BorderSide(
                          color: Colors.black, // Black border color
                          width: 1.0, // Border width
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            5.0), // Rounded corners when enabled
                        borderSide: BorderSide(
                          color: Colors.black, // Black border when enabled
                          width: 1.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            12.0), // Rounded corners when focused
                        borderSide: BorderSide(
                          color: Colors.black, // Black border when focused
                          width: 1.0,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 12.0,
                          horizontal: 16.0), // Padding inside the text field
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text('Weight (in kg)'),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "eg: 85", // Hint text inside the text field
                      hintStyle: TextStyle(
                        fontSize: 14.0, // Font size for hint text
                        color: Colors.grey, // Color for hint text (light grey)
                      ), // Prefix text inside the text field
                      filled: true, // Enables the background color
                      fillColor: Colors.white, // White background
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(12.0), // Rounded corners
                        borderSide: BorderSide(
                          color: Colors.black, // Black border color
                          width: 1.0, // Border width
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            5.0), // Rounded corners when enabled
                        borderSide: BorderSide(
                          color: Colors.black, // Black border when enabled
                          width: 1.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            12.0), // Rounded corners when focused
                        borderSide: BorderSide(
                          color: Colors.black, // Black border when focused
                          width: 1.0,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 12.0,
                          horizontal: 16.0), // Padding inside the text field
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 90), // Space between the container and the button
            Align(
              alignment: Alignment.centerRight, // Align the button to the right
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
                        builder: (context) => HealthHistoryPage(),
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
