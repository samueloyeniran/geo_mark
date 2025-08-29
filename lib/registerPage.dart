import 'package:flutter/material.dart';
import 'package:geo_mark/components/myTextField.dart';
import 'package:geo_mark/signinPage.dart';
import 'package:geo_mark/splashScreen.dart';

class Registerpage extends StatelessWidget {
  Registerpage({super.key});
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xC0072474),
        body: Center(
          child: Container(
            padding: EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 30),
            child: SingleChildScrollView(
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
                          color: const Color(0xFF6463BD),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 70,
                      width: 70,
                      child: Icon(
                        Icons.schedule,
                        color: const Color(0xFF6463BD),
                        size: 30,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
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
                      "Create your account to get started",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF6463BD),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(right: 10, left: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      height: 450,
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
                              "Create Account",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Center(
                            child: Text(
                              "join GEOMARK today",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          SizedBox(height: 10),
                          Mytextfield(
                            controller: nameController,
                            hintText: "NAME",
                            obscureText: false,
                            icon: Icons.person,
                          ),
                          SizedBox(height: 20),
                          Mytextfield(
                            controller: emailController,
                            hintText: "EMAIL",
                            obscureText: false,
                            icon: Icons.email,
                          ),
                          SizedBox(height: 20),
                          Mytextfield(
                            controller: passwordController,
                            hintText: "PASSWORD",
                            obscureText: true,
                            icon: Icons.lock,
                          ),
                          SizedBox(height: 20),
                          Mytextfield(
                            controller: confirmPasswordController,
                            hintText: "CONFIRM PASSWORD",
                            obscureText: true,
                            icon: Icons.lock,
                          ),
                          SizedBox(height: 20),
                          SizedBox(
                            height: 45,
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
                              child: SizedBox(
                                height: 50,
                                child: Center(
                                  child: Text(
                                    "Create Accoount",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account?",
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
