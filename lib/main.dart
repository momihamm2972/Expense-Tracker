import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MoneyTrackerApp());
}

class MoneyTrackerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Money Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFFaf8af8),
      // appBar: AppBar(
      //   title: Text('Money Fucker'),
      // ),
      body: Container(
        width: double.infinity,   // Add this - full width
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.center,
            colors: [
              Color(0xFFaf8af8),
              Colors.white,
            ],
          ),
        ),
        // child: Text('Hello Money Tracker!'),
        child: Column(
          children: [
            SizedBox(height: 100),  // Space from top
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () => print('settings'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(8),  // Control button padding here
                    minimumSize: Size(40, 40),   // Minimum button size
                  ),
                  child: Icon(Icons.settings, size: 20, color: Colors.black),
                ),
                SizedBox(width: 60),
                Icon(Icons.calendar_today, size: 20, color: Colors.black),
                SizedBox(width: 8),
                Text(
                  'January 4, 2026',
                  style: TextStyle(fontSize: 18, color: const Color.fromARGB(255, 0, 0, 0)),
                ),
                SizedBox(width: 60),
                ElevatedButton(
                  onPressed: () => print('notification'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(8),  // Control button padding here
                    minimumSize: Size(40, 40),   // Minimum button size
                  ),
                  child: Icon(Icons.notifications, size: 20, color: Colors.black),
                ),
              ],
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('This Month Spend',
                style: GoogleFonts.pacifico(
                  fontSize: 14,
                  color: const Color.fromARGB(255, 39, 38, 38),
                ),
                ),
              ],
            ),
            // SizedBox(height: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '\$1000',
                  style: GoogleFonts.pacifico(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 39, 38, 38),
                  ),
                ),
              ],
            ),
            // SizedBox(height: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '67% below last month',
                  style: GoogleFonts.pacifico(
                    fontSize: 14,
                    color: const Color.fromARGB(255, 39, 38, 38),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => print('wallet'),
                  style: ElevatedButton.styleFrom(
                    // padding: EdgeInsets.all(8),  // Control button padding here
                    minimumSize: Size(380, 60),   // Minimum button size
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // SizedBox(width: 20),
                      Padding(padding: EdgeInsets.only(left: 0)),
                      Icon(Icons.wallet, size: 20, color: Colors.black),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        backgroundColor: Colors.white,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Transactions'),
          BottomNavigationBarItem(icon: Icon(Icons.analytics), label: 'Analytics'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}