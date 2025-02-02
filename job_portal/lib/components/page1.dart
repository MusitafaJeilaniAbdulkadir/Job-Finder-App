// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'home.dart';

// class OnboardingScreen extends StatefulWidget {
//   @override
//   _OnboardingScreenState createState() => _OnboardingScreenState();
// }

// class _OnboardingScreenState extends State<OnboardingScreen> {
//   int currentIndex = 0;
//   final List<Map<String, String>> onboardingData = [
//     {
//       "title": "FIND A JOB THAT MEETS",
//       "description": "Your Qualifications And Experience",
//       "image": "assets/images/1.png"
//     },
//     {
//       "title": "Apply for Jobs",
//       "description": "Easily apply for jobs in a few clicks",
//       "image": "assets/images/apply.png"
//     },
//     {
//       "title": "Get Hired",
//       "description": "Start your dream job today!",
//       "image": "assets/images/hired.png"
//     }
//   ];

//    void finishOnboarding() async {
//      SharedPreferences prefs = await SharedPreferences.getInstance();
//      await prefs.setBool('seenOnboarding', true);
//        Navigator.pushReplacement(
//        context,
//        MaterialPageRoute(builder: (context) => HomeScreen()),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: PageView.builder(
//               itemCount: onboardingData.length,
//               onPageChanged: (index) {
//                 setState(() {
//                   currentIndex = index;
//                 });
//               },
//               itemBuilder: (context, index) => Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(onboardingData[index]["image/1.jpg"]!, height: 300),
//                   SizedBox(height: 20),
//                   Text(onboardingData[index]["title"]!,
//                       style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
//                   SizedBox(height: 10),
//                   Text(onboardingData[index]["description"]!,
//                       textAlign: TextAlign.center),
//                 ],
//               ),
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(
//               onboardingData.length,
//               (index) => Container(
//                 margin: EdgeInsets.symmetric(horizontal: 5),
//                 width: currentIndex == index ? 12 : 8,
//                 height: 8,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: currentIndex == index ? Colors.purple : Colors.grey,
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(height: 20),
//           // ElevatedButton(
//           //   onPressed: finishOnboarding,
//           //   child: Text(currentIndex == onboardingData.length - 1 ? "Get Started" : "Next"),
//           // ),
//           SizedBox(height: 20),
//         ],
     
//     ),
//     );
//   }
// }
