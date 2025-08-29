import 'package:flutter/material.dart';
import 'package:geo_mark/signinPage.dart';
import 'package:geo_mark/splashScreen.dart';

class Forgetpasswordpage extends StatelessWidget {
  const Forgetpasswordpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xC0072474),
        body: Center(
          child: Container(
            padding: EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF1E3A8A),
                      border: Border.all(
                        width: 2,
                        color: const Color(0xC18969E0),
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
                ),
                Center(
                  child: Text(
                    "GEOMARK",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    "Reset Your Password",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF6463BD),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  padding: EdgeInsets.only(right: 10, left: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 350,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop(
                            MaterialPageRoute(
                              builder: (context) => const SplashScreen(),
                            ),
                          );
                        },
                        icon: Icon(Icons.arrow_back),
                      ),
                      Center(
                        child: Text(
                          "Forget Password?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Center(
                        child: Text(
                          "No Worries, We'll send you reset instruction",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      SizedBox(height: 50),
                      SizedBox(
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "EMAIL",
                            labelText: "ENTER YOUR EMAIL",
                            hintStyle: TextStyle(fontSize: 15),
                            prefixIcon: Icon(Icons.email),
                            enabledBorder: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: const Color(0xC0072474),
                            foregroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(
                              horizontal: 100,
                              vertical: 15,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            "Create Accoount",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Remember Your Password?",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 8),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => Signinpage(),
                                ),
                              );
                            },
                            child: Text(
                              "sign in here",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xC0072474),
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
