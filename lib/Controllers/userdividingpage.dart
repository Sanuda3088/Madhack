import 'package:flutter/material.dart';
import 'package:jobfinder/Employer/homepage.dart';
import 'package:jobfinder/Employer/loginPage.dart';
import 'package:jobfinder/globals.dart';

import '../Applicant/homeScreen.dart';

class UserDividingPage extends StatelessWidget {
  const UserDividingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hey there!'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            elevatedButton(text: 'Applicant', onPressed:(){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()));
            } ),
            elevatedButton(
                text: 'Employer',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EMPLoginPage()));
                }),
          ],
        ),
      ),
    );
  }
}
