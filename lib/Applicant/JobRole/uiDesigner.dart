// import 'package:flutter/material.dart';
// import 'package:jobfinder/Applicant/components/jobDescription.dart';
// import 'package:jobfinder/Applicant/savedJobs.dart';

// class UiDesigner extends StatelessWidget {
//   const UiDesigner({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: JobDetails(
//           address: "CodeX Labs - Colombo , Sri Lanka.",
//           imagePath: "assets/ui-ux.png",
//           jobRole: "UI/UX Designer",
//           salary: "9K",
//           tag: "Remote",
//           aboutCompany:
//               "Our company is a dynamic and innovative tech startup dedicated to delivering cutting-edge solutions to our clients. We value creativity, teamwork, and continuous improvement, and we offer a supportive and collaborative work environment where you can thrive and grow in your career. Join us in shaping the future of digital experiences!",
//           jobDescription:
//               "We are seeking a talented UI/UX Designer to join our team. As a UI/UX Designer, you will be responsible for creating intuitive and visually appealing user interfaces for our digital products. You will collaborate closely with our product managers and developers to ensure seamless user experiences across web and mobile platforms.",
//           requirements:
//               "- Proven experience as a UI/UX Designer or similar role\n- Proficiency in design software such as Adobe XD, Sketch, or Figma\n- Strong portfolio showcasing UI/UX design projects\n- Understanding of user-centered design principles and best practices\n- Excellent communication and collaboration skills\n- Ability to iterate designs based on feedback and user testing",
//           responsibilities:
//               "- Designing user interfaces for web and mobile applications\n- Creating wireframes, prototypes, and mockups to communicate design ideas\n- Conducting user research and usability testing to gather insights and improve designs\n- Collaborating with cross-functional teams to ensure design feasibility and consistency\n- Staying up-to-date with industry trends and best practices in UI/UX design",
//           iconBookmark: const Icon(
//             Icons.bookmark,
//           ),
//           OnIconTap: () {
//             Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => const SavedJobs()));
//           }),
//     );
//   }
// }
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class UiDesigner extends StatelessWidget {
  const UiDesigner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 40,
          left: 20,
          right: 20,
        ),
        child: ListView(
          children: [
            Row(
              children: [
                Image.asset("assets/ui-ux.png"),
                const Column(
                  children: [
                    Text("UI/UX Designer"),
                    const Text("CodeX Labs - Colombo , Sri Lanka."),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const Text("Remote"),
                const Text(
                  "//9K",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                Text(
                  "Mo",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.7), fontSize: 18),
                ),
              ],
            ),
            const Text("Job Description"),
            Text(
                "We are seeking a talented UI/UX Designer to join our team. As a UI/UX Designer, you will be responsible for creating intuitive and visually appealing user interfaces for our digital products. You will collaborate closely with our product managers and developers to ensure seamless user experiences across web and mobile platforms."),
            const Text("Requirements"),
            Text(
                "- Proven experience as a UI/UX Designer or similar role\n- Proficiency in design software such as Adobe XD, Sketch, or Figma\n- Strong portfolio showcasing UI/UX design projects\n- Understanding of user-centered design principles and best practices\n- Excellent communication and collaboration skills\n- Ability to iterate designs based on feedback and user testing"),
            const Text("Responsibilities"),
            Text(
              "- Designing user interfaces for web and mobile applications\n- Creating wireframes, prototypes, and mockups to communicate design ideas\n- Conducting user research and usability testing to gather insights and improve designs\n- Collaborating with cross-functional teams to ensure design feasibility and consistency\n- Staying up-to-date with industry trends and best practices in UI/UX design",
            ),
            const Text("About Company"),
            Text(
                "Our company is a dynamic and innovative tech startup dedicated to delivering cutting-edge solutions to our clients. We value creativity, teamwork, and continuous improvement, and we offer a supportive and collaborative work environment where you can thrive and grow in your career. Join us in shaping the future of digital experiences!"),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark,
                    ),
                    iconSize: 40,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Apply Now"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
