import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Welcome to Home Screen",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500),)
    );
  }
}