import 'package:flutter/material.dart';
import 'package:geo_mark/registerpage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xC0072474),
        body: Center(
          child: Container(
            padding: EdgeInsets.only(top: 150),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF1E3A8A),
                    border: Border.all(
                      width: 2,
                      color: const Color(0xFF6463BD),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 70,
                  width: 70,
                  child: Icon(
                    Icons.schedule,
                    color: const Color(0xFFFFFFFF),
                    size: 30,
                  ),
                ),
                SizedBox(height: 50),
                Text(
                  "GEOMARK",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Track Time, Stay Connected",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF6463BD),
                  ),
                ),
                SizedBox(height: 40),
                Center(child: CircularProgressIndicator(color: Colors.white)),
                SizedBox(height: 200),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Registerpage()),
                    );
                  },
                  child: Text(
                    "next",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xC0072474),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
