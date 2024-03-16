
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../homeScreen.dart';

import 'package:flutter/material.dart';


import 'userInfo Component.dart';

class addQualification extends StatefulWidget {
  const addQualification({super.key});

  @override
  State<addQualification> createState() => _addQualificationState();
}

class _addQualificationState extends State<addQualification> {
  TextEditingController qualification = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController description = TextEditingController();
  final User? currentUser = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(

      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(width/50),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Center(
                  child: Text(
                    "Add Qualification",
                    style: TextStyle(
                        color: Colors.black45,
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                userInfoComponents(title: "Search Skills", controller: qualification, hint: "Enter Skills"),
                userInfoComponents(title: "Date of Birth", controller: date, hint: "DD/MM/YYYY"),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    controller: description,
                    maxLines: 10,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Short description about Field Of Study"),
                  ),
                ),
                SizedBox(
                  height: height/100,
                ),
                SizedBox(
                    width: width,
                    child: OutlinedButton(
                      onPressed: (){

                        _submitQualification(context);

                      },
                      child: Text(
                        "Submit",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.blue),
                      ),
                    )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }


  void _submitQualification(BuildContext context) {
    if (qualification.text.isNotEmpty &&
        date.text.isNotEmpty &&
        description.text.isNotEmpty ) {
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
          .collection('Quallifications')
          .doc(qualification.text);

      await userInfoRef.set({
        'qualification': qualification.text,
        'date': date.text,
        'description': description.text,
        'timestamp': FieldValue.serverTimestamp(),
      });
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Work Experience added successfully"),
        duration: Duration(seconds: 2), // Adjust duration as needed
      ));


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
