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
        child: Text("Welcome to jobs page" ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// void main() {
//   runApp(Jobs());
// }

// class Jobs extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Jobs(),
//     );
//   }
// }

// class _jobsState extends  StatelessWidget {
//   final List<JobApplication> jobs = [
//     JobApplication(
//       title: "Agency Lead",
//       company: "Google, Inc",
//       logo: "assets/google.png", // Sawirka shirkadda
//       daysAgo: "2 days ago",
//       status: "Pending",
//       statusColor: Colors.pink.shade100,
//     ),
//     JobApplication(
//       title: "Database Admin",
//       company: "Hilal, Inc",
//       logo: "assets/hilal.png",
//       daysAgo: "4 days ago",
//       status: "Rejected",
//       statusColor: Colors.pink,
//     ),
//     JobApplication(
//       title: "Web Developer",
//       company: "Afro, Inc",
//       logo: "assets/afro.png",
//       daysAgo: "4 days ago",
//       status: "Rejected",
//       statusColor: Colors.pink,
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[100],
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: Text(
//           "Applied Jobs",
//           style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//         ),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.filter_list, color: Colors.black),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: ListView.builder(
//           itemCount: jobs.length,
//           itemBuilder: (context, index) {
//             return JobCard(job: jobs[index]);
//           },
//         ),
//       ),
//     );
//   }
// }

// class JobApplication {
//   final String title;
//   final String company;
//   final String logo;
//   final String daysAgo;
//   final String status;
//   final Color statusColor;

//   JobApplication({
//     required this.title,
//     required this.company,
//     required this.logo,
//     required this.daysAgo,
//     required this.status,
//     required this.statusColor,
//   });
// }

// class JobCard extends StatelessWidget {
//   final JobApplication job;

//   JobCard({required this.job});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.only(bottom: 16),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//       child: ListTile(
//         contentPadding: EdgeInsets.all(16),
//         leading: CircleAvatar(
//           backgroundImage: AssetImage(job.logo),
//           radius: 24,
//         ),
//         title: Text(
//           job.title,
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//         subtitle: Text(job.company),
//         trailing: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(job.daysAgo, style: TextStyle(color: Colors.grey)),
//             SizedBox(height: 5),
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//               decoration: BoxDecoration(
//                 color: job.statusColor,
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Text(
//                 job.status,
//                 style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
