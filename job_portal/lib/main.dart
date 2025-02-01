import 'package:flutter/material.dart';
import 'package:whatsapp_clone/chats.dart';

void main() {
  runApp(const WhatsApp_Clone());
}

class WhatsApp_Clone extends StatelessWidget {
  const WhatsApp_Clone({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Job Finder",
      home: Home_Page(),
    );
  }
}

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("WhatsApp"),
            backgroundColor: Colors.white,
            // Color(Colors.green),
            actions: [
              IconButton(
                icon: const Icon(Icons.photo_camera),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {},
              )
            ]),
        body: Container(
          child: Center(
            child: Row(
              children: [Text("Welcome to our job finding app")],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_sharp), label: "Charts"),
            BottomNavigationBarItem(
                icon: Icon(Icons.signal_wifi_statusbar_4_bar), label: "Status"),
            BottomNavigationBarItem(
                icon: Icon(Icons.commute_rounded), label: "Communities"),
            BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
          ],
        ));
  }
}
