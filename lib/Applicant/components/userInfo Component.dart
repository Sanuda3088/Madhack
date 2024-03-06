
import 'package:flutter/material.dart';

class userInfoComponents extends StatelessWidget {
  const userInfoComponents({super.key, required this.title, required this.controller, required this.hint,});
  final String title;
  final TextEditingController controller;
  final String hint;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: hint,
            ),
          ),
        ),
        SizedBox(
          height: height/100,
        ),
      ],
    );
  }
}
