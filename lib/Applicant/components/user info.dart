import 'package:flutter/material.dart';

import 'userInfo Component.dart';

class addUserInfo extends StatelessWidget {
  addUserInfo({super.key});
  TextEditingController fullname = TextEditingController();
  TextEditingController dob = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController link01 = TextEditingController();
  TextEditingController link02 = TextEditingController();
  TextEditingController link03 = TextEditingController();


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
                      "About me",
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 20,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                userInfoComponents(title: "Full Name", controller: fullname, hint: "Enter Your Full Name"),
                userInfoComponents(title: "Date of Birth", controller: dob, hint: "DD/MM/YYYY"),
                userInfoComponents(title: "Email", controller: email, hint: "Enter Your Email"),
                userInfoComponents(title: "Phone Number", controller: phone, hint: "Enter Your Mobile Number"),
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
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      child: TextField(
                        controller: link01,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Optional",
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      child: TextField(
                        controller: link02,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Optional",
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
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
                       onPressed: (){},
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
