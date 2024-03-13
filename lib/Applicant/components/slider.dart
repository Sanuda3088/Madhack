import 'package:flutter/material.dart';
import 'package:jobfinder/Applicant/JobRole/uiDesigner.dart';
import 'package:jobfinder/Applicant/JobRole/webDeveloper.dart';
import 'package:jobfinder/Applicant/savedJobs.dart';

class SliderPage extends StatelessWidget {
  final String imagePath;
  final Icon iconBookmark;
  final String jobRole;
  final String address;
  final String salary;
  final String tag;

  const SliderPage({
    super.key,
    required this.imagePath,
    required this.iconBookmark,
    required this.jobRole,
    required this.address,
    required this.salary,
    required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 230, 229, 225),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(10)),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              InkWell(
                child: Image.asset(
                  imagePath,
                  width: 70,
                  height: 70,
                ),
                onTap: () {
                  if (jobRole == "UI/UX Designer") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const UiDesigner()));
                  } else if (jobRole == "Web Developer") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WebDeveloper()));
                  }
                },
              ),
              const SizedBox(
                width: 200,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SavedJobs()));
                  },
                  icon: iconBookmark,
                  iconSize: 40,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              if (jobRole == "UI/UX Designer") {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UiDesigner()));
              } else if (jobRole == "Web Developer") {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WebDeveloper()));
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 160, top: 30),
              child: Text(
                jobRole,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (jobRole == "UI/UX Designer") {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UiDesigner()));
              } else if (jobRole == "Web Developer") {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WebDeveloper()));
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 28),
              child: Text(
                address,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7), fontSize: 19),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          GestureDetector(
            onTap: () {
              if (jobRole == "UI/UX Designer") {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UiDesigner()));
              } else if (jobRole == "Web Developer") {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WebDeveloper()));
              }
            },
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    tag,
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                const SizedBox(
                  width: 160,
                ),
                Row(
                  children: [
                    Text(
                      "\$$salary/",
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    Text(
                      "Mo",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.7), fontSize: 18),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
