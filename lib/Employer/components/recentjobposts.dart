import 'package:flutter/material.dart';

class RecentJobPosts extends StatelessWidget {
  //final String imagePath;
  final String jobRole;
  final String address;
  final String salary;
  final String tag;
  //final VoidCallback? OnIconTap;
  //final VoidCallback? OnContainerTap;

  const RecentJobPosts({
    super.key,
   // required this.imagePath,
    required this.jobRole,
    required this.address,
    required this.salary,
    required this.tag,
    //required this.OnContainerTap,
    //required this.OnIconTap,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.25,
      width: width * 0.9,
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: Image.asset(
                  'assets/ui-ux.png',
                  width: 50,
                  height: 50,
                ),
                onTap: () {
                  //OnContainerTap;
                },
              ),
              IconButton(
                onPressed: () {
                  //OnIconTap;
                },
                icon: const Icon(Icons.description_outlined),
                iconSize: 30,
              ),
            ],
          ),
          Column(
            children: [
              Text(
                jobRole,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Text(
                address,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7), fontSize: 19),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          )
        ],
      ),
    );
  }
}
