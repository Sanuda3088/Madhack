// //import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

// class JobDetails extends StatelessWidget {
//   final String imagePath;
//   final String jobRole;
//   final String address;
//   final String salary;
//   final String tag;
//   final String jobDescription;
//   final String requirements;
//   final String responsibilities;
//   final String aboutCompany;
//   final Icon iconBookmark;
//   final VoidCallback? OnIconTap;

//   const JobDetails(
//       {super.key,
//       required this.address,
//       required this.imagePath,
//       required this.jobRole,
//       required this.salary,
//       required this.tag,
//       required this.aboutCompany,
//       required this.jobDescription,
//       required this.requirements,
//       required this.responsibilities,
//       required this.iconBookmark,
//       required this.OnIconTap});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: const EdgeInsets.only(
//           top: 40,
//           left: 20,
//           right: 20,
//         ),
//         child: ListView(
//           children: [
//             Row(
//               children: [
//                 Image.asset(imagePath),
//                 Column(
//                   children: [
//                     Text(jobRole),
//                     Text(address),
//                   ],
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             Row(
//               children: [
//                 Text(tag),
//                 Text(
//                   "\$$salary/",
//                   style: const TextStyle(
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 24),
//                 ),
//                 Text(
//                   "Mo",
//                   style: TextStyle(
//                       color: Colors.black.withOpacity(0.7), fontSize: 18),
//                 ),
//               ],
//             ),
//             const Text("Job Description"),
//             Text(jobDescription),
//             const Text("Requirements"),
//             Text(requirements),
//             const Text("Responsibilities"),
//             Text(responsibilities),
//             const Text("About Company"),
//             Text(aboutCompany),
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(bottom: 20),
//                   child: IconButton(
//                     onPressed: () {
//                       OnIconTap;
//                     },
//                     icon: iconBookmark,
//                     iconSize: 40,
//                   ),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {},
//                   child: const Text("Apply Now"),
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
