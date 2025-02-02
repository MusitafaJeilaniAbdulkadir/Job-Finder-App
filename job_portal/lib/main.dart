import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const job_portal());
}

class job_portal extends StatelessWidget {
  const job_portal({super.key});

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
        title: const Text(
          "Job Finder",
          selectionColor: Colors.black,
        ),
        actions: [Icon(Icons.search), Icon(Icons.replay_rounded)],
        elevation: 4.0,
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(1.0), child: Container(height: 1.0)),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            ListTile(
              title: Text("data"),
            ),
            ListTile()
          ],
        ),
      ),
      body: Center(
        child: Text("Welcome"),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.purple,
        items: <Widget>[
          Icon(
            Icons.home_filled,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.store_mall_directory_sharp,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.bookmark_border_sharp,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.person_2_outlined,
            size: 30,
            color: Colors.white,
          ),
        ],
        onTap: (index) {},
        animationDuration: Duration(milliseconds: 300),
      ),
    );
  }
}
