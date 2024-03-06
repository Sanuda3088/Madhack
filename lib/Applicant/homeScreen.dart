import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        color: Colors.white,
        child: ListView(
          children: [
            const Row(
              children: [
                Icon(
                  Icons.menu,
                  size: 35,
                ),
                SizedBox(
                  width: 300,
                ),
                Icon(
                  Icons.settings,
                  size: 35,
                ),
              ],
            ),
            // Search Bar
            Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 35),
              child: TextField(
                cursorColor: Colors.white,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: InputBorder.none, // Darker color for better contrast
                  contentPadding: const EdgeInsets.only(left: 15),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.grey, // Match fill color
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: "Search Jobs",
                  hintStyle: TextStyle(
                    fontSize: 22.0,
                    color:
                        Colors.grey[400], // Lighter color for better visibility
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(bottom: 2, left: 6),
                    child: SizedBox(
                      width: 10,
                      height: 10,
                      child: Icon(
                        Icons.search,
                        size: 35,
                        color: const Color.fromARGB(255, 15, 1, 1)
                            .withOpacity(0.5), // Icon color
                      ),
                    ),
                  ),
                  suffixIcon: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.filter_list_sharp,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Text(
              "Most Popular",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 1,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/ui-ux.png",
                        width: 70,
                        height: 70,
                      ),
                      SizedBox(
                        width: 200,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.bookmark,
                            size: 40,
                          )),
                      // InkWell(
                      //   child: Image.asset("assets/pngwing.com (5).png"),
                      //   onTap: () {},
                      // )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
