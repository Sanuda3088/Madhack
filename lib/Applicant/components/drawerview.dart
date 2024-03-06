import 'package:flutter/material.dart';

import 'Add Eductaion.dart';
import 'Add Work Experience.dart';
import 'MyGlobals.dart';
import 'user info.dart';

class drawermenu extends StatefulWidget {
  const drawermenu({Key? key}) : super(key: key);

  @override
  _drawermenuState createState() => _drawermenuState();
}

class _drawermenuState extends State<drawermenu> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderMenu(
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => addUserInfo()));
              },
              title: "About me",
              buttonIcon: Icons.person,
            ),
            SizedBox(
              height: height/50,
            ),
            HeaderMenu(
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> addWorkExperience()));
              },
              title: "Work Experience",
              buttonIcon: Icons.work,
            ),
            SizedBox(
              height: height/50,
            ),
            HeaderMenu(
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> addEducation()));
              },
              title: "Education",
              buttonIcon: Icons.school,
            ),
            SizedBox(
              height: height/50,
            ),
            HeaderMenu(
              press: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => aboutScreen()));
                Navigator.pop(context);
              },
              title: "Skill",
              buttonIcon: Icons.home_repair_service,
            ),
            SizedBox(
              height: height/50,
            ),
            HeaderMenu(
              press: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => aboutScreen()));
                Navigator.pop(context);
              },
              title: "Qualifications",
              buttonIcon: Icons.cast_for_education,
            ),
            SizedBox(
              height: height/50,
            ),
            HeaderMenu(
              press: () {
                Navigator.pop(context);
              },
              title: "LogoOut",
              buttonIcon: Icons.logout,
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderMenu extends StatelessWidget {
  const HeaderMenu({
    Key? key,
    required this.title,
    required this.press,
    required this.buttonIcon,
  }) : super(key: key);
  final String title;
  final VoidCallback press;
  final IconData buttonIcon;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        boxShadow:[
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 1,
          ),
        ]
      ),
      child: InkWell(
        onTap: press,
        child: Padding(
          padding: EdgeInsets.only(right: width/50,left: width/50, top: height/100, bottom: height/100),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              Icon(buttonIcon)
            ],
          ),
        ),
      ),
    );
  }
}