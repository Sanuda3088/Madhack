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

class WebDeveloper extends StatelessWidget {
  const WebDeveloper({
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
                    "assets/coding_3242257.png",
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
                          "Web Developer",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                      ),
                      Text(
                        "99X Technology - Colombo 03",
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
                "We're seeking a talented and motivated web developer to join our team. As a web developer, you'll be responsible for designing, coding, and modifying websites, from layout to function, according to our company's specifications. You'll strive to create visually appealing sites that feature user-friendly design and clear navigation.",
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
                "- Proficiency in HTML, CSS, and JavaScript.\n- Experience with responsive and adaptive design.\n- Understanding of server-side CSS pre-processing platforms, such as LESS and SASS.\n- Familiarity with JavaScript frameworks such as AngularJS, React, or Vue.js.\n- Knowledge of code versioning tools, such as Git.\n- Strong attention to detail and an eye for design.",
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
                "- Designing engaging and responsive websites.\n- Collaborating with the design team to create wireframes, prototypes, and mockups.\n- Developing and maintaining the back-end functionality of websites.\n- Ensuring cross-platform optimization for mobile devices.\n- Ensuring high performance and availability of websites.\n- Managing technical aspects of the CMS.\n- Staying updated on emerging technologies and industry trends.",
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
                "At 99X Technology, we're dedicated to [brief description of company mission or values]. We prioritize innovation, creativity, and collaboration, and we're looking for individuals who share our passion for excellence. Join our dynamic team and contribute to the development of cutting-edge web solutions that make a real impact.",
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
