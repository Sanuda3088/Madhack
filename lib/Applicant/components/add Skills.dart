import 'package:flutter/material.dart';

import 'userInfo Component.dart';

class addSkills extends StatefulWidget {
  addSkills({super.key});

  @override
  State<addSkills> createState() => _addSkillsState();
}

class _addSkillsState extends State<addSkills> {
  TextEditingController searchSkill = TextEditingController();
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
                    "Add Skills",
                    style: TextStyle(
                        color: Colors.black45,
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                userInfoComponents(title: "Search Skills", controller: searchSkill, hint: "Enter Skills"),
                SizedBox(
                  height: height/2,
                ),
                SizedBox(
                    width: width,
                    child: OutlinedButton(
                      onPressed: (){
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
}
