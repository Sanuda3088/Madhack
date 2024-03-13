import 'package:flutter/material.dart';
import 'package:jobfinder/Applicant/homeScreen.dart';
import 'package:dotted_border/dotted_border.dart';

class ApplyJob extends StatelessWidget {
  final String imagePath;
  final String jobRole;
  final String address;
  const ApplyJob({
    super.key,
    required this.address,
    required this.imagePath,
    required this.jobRole,
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
                    imagePath,
                    width: 70,
                    height: 70,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          jobRole,
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                      ),
                      Text(
                        address,
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
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "CV",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: DottedBorder(
                radius: const Radius.circular(5),
                strokeWidth: 2,
                borderType: BorderType.RRect,
                padding: const EdgeInsets.only(top: 30, bottom: 30),
                color: Colors.black,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.drive_folder_upload_sharp),
                    color: Colors.black,
                    iconSize: 35,
                  ),
                  const Text(
                    "Upload your CV",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                    ),
                  )
                ]),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Message",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: TextField(
                textAlignVertical: TextAlignVertical.top,
                decoration: InputDecoration(
                    hintText: "Enter your text Here",
                    hintStyle: const TextStyle(
                      fontSize: 18,
                    ),
                    fillColor: const Color.fromARGB(255, 213, 211, 205),
                    filled: true,
                    contentPadding: const EdgeInsets.only(
                      bottom: 200,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 1,
                        ))),
              ),
            ),
            const SizedBox(
              height: 140,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 60),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 87, 86, 83),
                    padding: const EdgeInsets.only(
                        top: 12, bottom: 12, left: 100, right: 100),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Submit",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
