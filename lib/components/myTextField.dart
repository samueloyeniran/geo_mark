// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final IconData icon;
  const Mytextfield({
    Key? key,

    required this.hintText,
    required this.obscureText,
    this.controller,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      width: MediaQuery.of(context).size.width,
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: hintText,
          prefixIcon: Icon(icon, size: 20),
          hintStyle: TextStyle(fontSize: 15),
          enabledBorder: OutlineInputBorder(),
        ),
      ),
    );
  }
}
