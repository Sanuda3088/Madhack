import 'dart:ffi';

import 'package:flutter/material.dart';

class SliderPage extends StatelessWidget {
  final String imagePath;
  final Icon iconBookmark;
  final String jobRole;
  final String address;
  final String salary;
  final String tag;

  const SliderPage({
    super.key,
    required this.imagePath,
    required this.iconBookmark,
    required this.jobRole,
    required this.address,
    required this.salary,
    required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 230, 229, 225),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(10)),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              InkWell(
                child: Image.asset(
                  imagePath,
                  width: 70,
                  height: 70,
                ),
                onTap: () {},
              ),
              const SizedBox(
                width: 200,
              ),
              IconButton(
                onPressed: () {},
                icon: iconBookmark,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 160, top: 30),
            child: Text(
              jobRole,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 28),
            child: Text(
              address,
              style:
                  TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 19),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(8),
                child: Text(
                  tag,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              SizedBox(
                width: 160,
              ),
              Row(
                children: [
                  Text(
                    "\$$salary/",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  Text(
                    "Mo",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.7), fontSize: 18),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
