import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../homeScreen.dart';

class addSkills extends StatefulWidget {
  addSkills({Key? key});

  @override
  State<addSkills> createState() => _addSkillsState();
}

class _addSkillsState extends State<addSkills> {
  TextEditingController searchSkill = TextEditingController();
  final User? currentUser = FirebaseAuth.instance.currentUser;
  final List<String> skills = [
    'Flutter',
    'Dart',
    'Firebase',
    'React Native',
    'Python',
    'Java',
    'JavaScript',
    'HTML',
    'CSS',
    'Node.js',
  ];

  List<String> filteredSkills = [];
  String? selectedSkill;

  void filterSkills(String query) {
    setState(() {
      filteredSkills = skills
          .where((skill) => skill.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Add Skills",
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Text(
                'Add Skills',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: TextField(
                  controller: searchSkill,
                  onChanged: filterSkills,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Search Skills',
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: filteredSkills.length,
                  itemBuilder: (context, index) {
                    final skill = filteredSkills[index];
                    return ListTile(
                      title: Text(skill),
                      onTap: () {
                        setState(() {
                          selectedSkill = skill;
                          searchSkill.text = selectedSkill!;
                        });
                      },
                      selected: selectedSkill == skill,
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              if (selectedSkill != null)
                Text(
                  'Selected Skill: $selectedSkill',
                  style: TextStyle(fontSize: 20),
                ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    _submitSkills(context);
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void _submitSkills(BuildContext context) {
    if (selectedSkill != null) {
      _submission(context, selectedSkill!);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Please select a skill"),
      ));
    }
  }

  void _submission(BuildContext context, String skill) async {
    try {
      final userInfoRef = FirebaseFirestore.instance
          .collection('Applicant')
          .doc(currentUser!.uid)
          .collection('Skills')
          .doc('skill');

      await userInfoRef.set({
        'skill': skill,
        'timestamp': FieldValue.serverTimestamp(),
      });
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Skill added successfully"),
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


