import 'package:flutter/material.dart';

class jobs extends StatefulWidget {
  const jobs({super.key});

  @override
  State<jobs> createState() => _jobsState();
}

class _jobsState extends State<jobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Welcome to jobs page"),
      ),
    );
  }
}