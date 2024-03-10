import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:jobfinder/main.dart';

class SliderPage extends StatelessWidget {
  final String imagePath;
  final Icon iconBookmark;
  final String jobRole;
  final String address;
  final String salary;
  final String tag;
  final VoidCallback? OnIconTap;
  final VoidCallback? OnContainerTap;

  const SliderPage({
    super.key,
    required this.imagePath,
    required this.iconBookmark,
    required this.jobRole,
    required this.address,
    required this.salary,
    required this.tag,
    required this.OnContainerTap,
    required this.OnIconTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 230, 229, 225),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(10)),
      ),
      padding: const EdgeInsets.all(20),
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
                onTap: () {
                  OnContainerTap;
                },
              ),
              const SizedBox(
                width: 200,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: IconButton(
                  onPressed: () {
                    OnIconTap;
                  },
                  icon: iconBookmark,
                  iconSize: 40,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              OnContainerTap;
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 160, top: 30),
              child: Text(
                jobRole,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              OnContainerTap;
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 28),
              child: Text(
                address,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7), fontSize: 19),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          GestureDetector(
            onTap: () {
              OnContainerTap;
            },
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    tag,
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                const SizedBox(
                  width: 160,
                ),
                Row(
                  children: [
                    Text(
                      "\$$salary/",
                      style: const TextStyle(
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
            ),
          )
        ],
      ),
    );
  }
}
