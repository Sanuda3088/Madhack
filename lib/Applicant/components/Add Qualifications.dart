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
