import 'package:flutter/material.dart';


import 'userInfo Component.dart';

class addWorkExperience extends StatefulWidget {
  addWorkExperience({super.key});

  @override
  State<addWorkExperience> createState() => _addWorkExperienceState();
}

class _addWorkExperienceState extends State<addWorkExperience> {
  TextEditingController jobName = TextEditingController();

  TextEditingController company = TextEditingController();

  TextEditingController startdate = TextEditingController();

  TextEditingController enddate = TextEditingController();

  TextEditingController description = TextEditingController();

  bool? currentJob = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(width/50),
          child: SizedBox(
            height: height,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Center(
                    child: Text(
                      "Add Work Experience",
                      style: TextStyle(
                          color: Colors.black45,
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                  userInfoComponents(title: "Job Title", controller: jobName, hint: "Enter Your Job Name"),
                  userInfoComponents(title: "Company", controller: company, hint: "Enter Your Company"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: width/7*3,
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Start Date",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                              child: TextField(
                                controller: startdate,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "DD/MM/YYYY",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width/7*3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "End Date",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                              child: TextField(
                                enabled: currentJob == true ? false : true,
                                controller: enddate,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "DD/MM/YYYY",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        // tristate: true,
                        value: currentJob,
                        onChanged: (bool? value) {
                          setState(() {
                            currentJob = value;
                            value == true ? enddate.clear() : enddate = enddate;


                          });
                        },
                      ),
                      const Text('This is my current position'),
                    ],
                  ),

                  Text(
                    "Description",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      controller: description,
                      maxLines: 10,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Short description about Job role",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height/100,
                  ),
                  SizedBox(
                      width: width,
                      child: OutlinedButton(
                        onPressed: (){
                          print(enddate.toString());
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
      ),
    );
  }
}
