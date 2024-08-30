import 'package:flutter/material.dart';
import 'type1.dart';
import 'type2.dart';
import 'GestationalDiabetes.dart';

class DiabetesTypePage extends StatefulWidget {
  @override
  _DiabetesTypePageState createState() => _DiabetesTypePageState();
}

class _DiabetesTypePageState extends State<DiabetesTypePage> {
  String? _selectedDiabetesType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
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
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align everything to the start (left)
          children: [
            // Align "Basic Information." with the box
            Text('Diabetes type.',
                style: TextStyle(
                    fontFamily: 'serif',
                    fontSize: 20,
                    fontWeight: FontWeight.w400)),
            SizedBox(height: 10),
            Container(
              height: 270,
              width: 500,
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
                  const Text('What type of diabetes do you have?'),
                  SizedBox(height: 20),
                  // Type 1 Button
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: _selectedDiabetesType == 'Type 1'
                          ? Color.fromARGB(255, 198, 246, 214)
                          : Colors.white,
                      side: BorderSide(
                          width: 3, color: Color.fromARGB(255, 198, 246, 214)),
                      fixedSize: Size(300, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        _selectedDiabetesType = 'Type 1';
                      });
                    },
                    child: Text(
                      'Type 1 Diabetes',
                      style: TextStyle(
                          color: _selectedDiabetesType == 'Type 1'
                              ? Colors.black
                              : Colors.black),
                    ),
                  ),
                  SizedBox(height: 10),
                  // Type 2 Button
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: _selectedDiabetesType == 'Type 2'
                          ? Color.fromARGB(255, 198, 246, 214)
                          : Colors.white,
                      side: BorderSide(
                          width: 3, color: Color.fromARGB(255, 198, 246, 214)),
                      fixedSize: Size(300, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        _selectedDiabetesType = 'Type 2';
                      });
                    },
                    child: Text(
                      'Type 2 Diabetes',
                      style: TextStyle(
                          color: _selectedDiabetesType == 'Type 2'
                              ? Colors.black
                              : Colors.black),
                    ),
                  ),
                  SizedBox(height: 10),
                  // Gestational Diabetes Button
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor:
                          _selectedDiabetesType == 'Gestational diabetes'
                              ? Color.fromARGB(255, 198, 246, 214)
                              : Colors.white,
                      side: BorderSide(
                          width: 3, color: Color.fromARGB(255, 198, 246, 214)),
                      fixedSize: Size(300, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        _selectedDiabetesType = 'Gestational diabetes';
                      });
                    },
                    child: Text(
                      'Gestational diabetes',
                      style: TextStyle(
                          color: _selectedDiabetesType == 'Gestational diabetes'
                              ? Colors.black
                              : Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 250),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF4E92A8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    side: BorderSide(color: Colors.white, width: 2),
                    minimumSize: Size(100, 50),
                  ),
                  child: Text(
                    'BACK',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Bungee',
                        fontSize: 17),
                  ),
                  onPressed: () {
                    Navigator.pop(
                        context); // Navigate back to the previous page
                  },
                ),
                TextButton(
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
                        color: Colors.white,
                        fontFamily: 'Bungee',
                        fontSize: 17),
                  ),
                  onPressed: _selectedDiabetesType != null
                      ? () {
                          if (_selectedDiabetesType == 'Type 1') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Type1DiabetesInfoPage()),
                            );
                          } else if (_selectedDiabetesType == 'Type 2') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Type2DiabetesInfoPage()),
                            );
                          } else if (_selectedDiabetesType ==
                              'Gestational diabetes') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      GestationalDiabetesInfoPage()),
                            );
                          }
                        }
                      : null, // Disable the button if no diabetes type is selected
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
