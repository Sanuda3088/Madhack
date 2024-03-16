import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:jobfinder/Applicant/homeScreen.dart';

import '../../globals.dart';
import 'userInfo Component.dart';

class addUserInfo extends StatelessWidget {
  addUserInfo({Key? key}) : super(key: key);

  final TextEditingController fullname = TextEditingController();
  final TextEditingController dob = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController link01 = TextEditingController();
  final TextEditingController link02 = TextEditingController();
  final TextEditingController link03 = TextEditingController();
  final User? currentUser = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(width / 50),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "About me",
                    style: TextStyle(
                        color: Colors.black45,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                userInfoComponents(
                    title: "Full Name",
                    controller: fullname,
                    hint: "Enter Your Full Name"),
                userInfoComponents(
                    title: "Date of Birth",
                    controller: dob,
                    hint: "DD/MM/YYYY"),
                userInfoComponents(
                    title: "Email",
                    controller: email,
                    hint: "Enter Your Email"),
                userInfoComponents(
                    title: "Phone Number",
                    controller: phone,
                    hint: "Enter Your Mobile Number"),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Links",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 8, vertical: 16),
                      child: TextField(
                        controller: link01,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Optional",
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 8, vertical: 16),
                      child: TextField(
                        controller: link02,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Optional",
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 8, vertical: 16),
                      child: TextField(
                        controller: link03,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Optional",
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: width,
                  child: OutlinedButton(
                    onPressed: () {
                      _submitUserInfo(context);
                    },
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Colors.blue),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _submitUserInfo(BuildContext context) {
    if (fullname.text.isNotEmpty &&
        dob.text.isNotEmpty &&
        email.text.isNotEmpty &&
        phone.text.isNotEmpty) {
      _submission(context);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Please fill in all required fields"),
      ));
    }
  }

  void _submission(BuildContext context) async {
    try {
      final userInfoRef = FirebaseFirestore.instance
          .collection('Applicant')
          .doc(currentUser!.uid)
          .collection('UserInfo')
          .doc('user_info');

      final userInfoDoc = await userInfoRef.get();

      if (userInfoDoc.exists) {
        // Update existing document
        await userInfoRef.update({
          'fullName': fullname.text,
          'dob': dob.text,
          'email': email.text,
          'phone': phone.text,
          'link01': link01.text,
          'link02': link02.text,
          'link03': link03.text,
          'timestamp': FieldValue.serverTimestamp(),
        });
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("User information updated successfully"),
          duration: Duration(seconds: 2), // Adjust duration as needed
        ));
      } else {
        // Add new document
        await userInfoRef.set({
          'fullName': fullname.text,
          'dob': dob.text,
          'email': email.text,
          'phone': phone.text,
          'link01': link01.text,
          'link02': link02.text,
          'link03': link03.text,
          'applicantId': currentUser!.uid,
          'timestamp': FieldValue.serverTimestamp(),
        });
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("User information added successfully"),
          duration: Duration(seconds: 2), // Adjust duration as needed
        ));
      }

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ApplicantHomeScreen(),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
        ),
      );
    }
  }

}
