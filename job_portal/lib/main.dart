import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:job_portal/favorite.dart';
import 'package:job_portal/home.dart';
import 'package:job_portal/jobs.dart';
import 'package:job_portal/login_page.dart';
import 'package:job_portal/profile.dart';

void main() {
  runApp(const job_portal());
}

class job_portal extends StatefulWidget {
  const job_portal({super.key});

  @override
  State<job_portal> createState() => _job_portalState();
}

class _job_portalState extends State<job_portal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Job Finder",
      home: LoginScreen(),
    );
  }
}
 
class Home_Page extends StatefulWidget {
  Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  int _page = 0;
  final screens = [ home() ,favorite(), jobs(), profile(),LoginScreen()];

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

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
      body: screens[_page],
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
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        animationDuration: Duration(milliseconds: 300),
      ),
    );
  }
}



