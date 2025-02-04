import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Welcome to our home page"),
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// void main() {
//   runApp(JobFinderApp());
// }

// class JobFinderApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: JobFinderHome(),
//     );
//   }
// }

// class JobFinderHome extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       bottomNavigationBar: BottomNavBar(),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 40), // Space for status bar
              
//               // Hero Section
//               HeroSection(),

//               SizedBox(height: 20),

//               // Categories Section
//               Text("Categories", style: sectionTitleStyle),
//               SizedBox(height: 10),
//               CategoriesSection(),

//               SizedBox(height: 20),

//               // Popular Jobs
//               Text("Popular Jobs", style: sectionTitleStyle),
//               SizedBox(height: 10),
//               JobList(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// // *Hero Section*
// class HeroSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [Colors.purple.shade700, Colors.blue.shade500],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//         borderRadius: BorderRadius.circular(15),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text("BROWSE JOBS", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
//           SizedBox(height: 5),
//           Text("That match your experience\nOrdered by most relevant",
//               style: TextStyle(color: Colors.white70, fontSize: 16)),
//           SizedBox(height: 10),
//           Align(
//             alignment: Alignment.centerRight,
//             child: Image.asset("assets/images/people.png", height: 100),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // *Categories Section*
// class CategoriesSection extends StatelessWidget {
//   final List<String> categories = ["Software Engineering", "UI/UX Designer", "Database", "Marketing"];
  
//   @override
//   Widget build(BuildContext context) {
//     return Wrap(
//       spacing: 10,
//       children: categories.map((category) {
//         return Chip(
//           label: Text(category, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
//           backgroundColor: Colors.grey[200],
//         );
//       }).toList(),
//     );
//   }
// }

// // *Job Listings*
// class JobList extends StatelessWidget {
//   final List<Map<String, dynamic>> jobs = [
//     {
//       "title": "Agency Business Lead",
//       "company": "Google, Inc",
//       "time": "6 minutes ago",
//       "applicants": "19 Applicants",
//       "icon": Icons.business_center,
//     },
//     {
//       "title": "Software Tester",
//       "company": "Microsoft, Inc",
//       "time": "12 minutes ago",
//       "applicants": "30 Applicants",
//       "icon": Icons.bug_report,
//     }
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: jobs.map((job) {
//         return JobCard(
//           title: job["title"],
//           company: job["company"],
//           time: job["time"],
//           applicants: job["applicants"],
//           icon: job["icon"],
//         );
//       }).toList(),
//     );
//   }
// }

// // *Single Job Card*
// class JobCard extends StatelessWidget {
//   final String title, company, time, applicants;
//   final IconData icon;

//   JobCard({required this.title, required this.company, required this.time, required this.applicants, required this.icon});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//       elevation: 2,
//       margin: EdgeInsets.symmetric(vertical: 8),
//       child: Padding(
//         padding: EdgeInsets.all(15),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 Icon(icon, color: Colors.blue, size: 30),
//                 SizedBox(width: 10),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//                     Text(company, style: TextStyle(color: Colors.grey, fontSize: 14)),
//                   ],
//                 ),
//                 Spacer(),
//                 Icon(Icons.bookmark_border, color: Colors.grey),
//               ],
//             ),
//             SizedBox(height: 10),
//             Row(
//               children: [
//                 Icon(Icons.access_time, size: 16, color: Colors.grey),
//                 SizedBox(width: 5),
//                 Text(time, style: TextStyle(color: Colors.grey)),
//                 Spacer(),
//                 Icon(Icons.people, size: 16, color: Colors.grey),
//                 SizedBox(width: 5),
//                 Text(applicants, style: TextStyle(color: Colors.grey)),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // *Bottom Navigation Bar*
// class BottomNavBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       backgroundColor: Colors.purple,
//       selectedItemColor: Colors.white,
//       unselectedItemColor: Colors.white70,
//       type: BottomNavigationBarType.fixed,
//       items: [
//         BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
//         BottomNavigationBarItem(icon: Icon(Icons.work), label: ""),
//         BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: ""),
//         BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
//       ],
//     );
//   }
// }

// // *Styling*
// TextStyle sectionTitleStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);


