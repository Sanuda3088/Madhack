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
import 'package:jobfinder/Applicant/homeScreen.dart';
import 'package:jobfinder/Applicant/savedJobs.dart';

class UiDesigner extends StatelessWidget {
  const UiDesigner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 20,
          left: 10,
          right: 10,
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 340, bottom: 10),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  icon: const Icon(
                    Icons.keyboard_backspace,
                    color: Colors.black,
                    size: 35,
                    weight: 3.0,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/ui-ux.png",
                    width: 70,
                    height: 70,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          "UI/UX Designer",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                      ),
                      Text(
                        "CodeX Labs - Colombo , Sri Lanka.",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                    "Full Time",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                const SizedBox(
                  width: 160,
                ),
                const Text(
                  "9K",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                Text(
                  "/Mo",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.7), fontSize: 18),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Job Description",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "We are seeking a talented UI/UX Designer to join our team. As a UI/UX Designer, you will be responsible for creating intuitive and visually appealing user interfaces for our digital products. You will collaborate closely with our product managers and developers to ensure seamless user experiences across web and mobile platforms.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Requirements",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "- Proven experience as a UI/UX Designer or similar role\n- Proficiency in design software such as Adobe XD, Sketch, or Figma\n- Strong portfolio showcasing UI/UX design projects\n- Understanding of user-centered design principles and best practices\n- Excellent communication and collaboration skills\n- Ability to iterate designs based on feedback and user testing",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Responsibilities",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "- Designing user interfaces for web and mobile applications\n- Creating wireframes, prototypes, and mockups to communicate design ideas\n- Conducting user research and usability testing to gather insights and improve designs\n- Collaborating with cross-functional teams to ensure design feasibility and consistency\n- Staying up-to-date with industry trends and best practices in UI/UX design",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "About Company",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Our company is a dynamic and innovative tech startup dedicated to delivering cutting-edge solutions to our clients. We value creativity, teamwork, and continuous improvement, and we offer a supportive and collaborative work environment where you can thrive and grow in your career. Join us in shaping the future of digital experiences!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SavedJobs()));
                      },
                      icon: const Icon(
                        Icons.bookmark,
                      ),
                      iconSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 87, 86, 83),
                      padding: const EdgeInsets.only(
                          top: 12, bottom: 12, left: 100, right: 100),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Apply Now",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
