// import 'package:flutter/material.dart';
// import 'package:jobfinder/Applicant/components/jobDescription.dart';
// import 'package:jobfinder/Applicant/savedJobs.dart';

// class WebDeveloper extends StatelessWidget {
//   const WebDeveloper({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: JobDetails(
//           address: "CodeX Labs - Colombo , Sri Lanka.",
//           imagePath: "assets/ui-ux.png",
//           jobRole: "Web Developer",
//           salary: "8K",
//           tag: "Full Time",
//           aboutCompany:
//               "Our company is a leading technology firm dedicated to revolutionizing [mention your industry or product/service]. We pride ourselves on fostering a collaborative and innovative work environment where talented individuals can thrive. Join us in shaping the future of [mention your industry or product/service] and making a meaningful impact in the digital world.",
//           jobDescription:
//               "We're seeking a talented and motivated web developer to join our team. As a web developer, you'll be responsible for designing, coding, and modifying websites, from layout to function, according to our company's specifications. You'll strive to create visually appealing sites that feature user-friendly design and clear navigation",
//           requirements:
//               "- Proficiency in HTML, CSS, and JavaScript.\n- Experience with responsive and adaptive design.\n- Understanding of server-side CSS pre-processing platforms, such as LESS and SASS.\n- Familiarity with JavaScript frameworks such as AngularJS, React, or Vue.js.\n- Knowledge of code versioning tools, such as Git.\n- Strong attention to detail and an eye for design.",
//           responsibilities:
//               "- Designing engaging and responsive websites.\n- Collaborating with the design team to create wireframes, prototypes, and mockups.\n- Developing and maintaining the back-end functionality of websites.\n- Ensuring cross-platform optimization for mobile devices.\n- Ensuring high performance and availability of websites.\n- Managing technical aspects of the CMS.\n- Staying updated on emerging technologies and industry trends.",
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
import 'package:flutter/material.dart';

class WebDeveloper extends StatelessWidget {
  const WebDeveloper({
    super.key,
  });

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
            Text("About Company"),
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
