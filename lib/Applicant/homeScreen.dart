import 'package:flutter/material.dart';
import 'package:jobfinder/Applicant/components/slider.dart';
import 'package:jobfinder/Applicant/filterpage.dart';
import 'components/drawerview.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Shanka Visal Amarasekara"),
              accountEmail: Text("shankavisal@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://lh3.googleusercontent.com/a/ACg8ocJ13rhrBpbk1rPNom7VDhUg-8I_SUTQ2UtTGhomswUHG-U=s360-c-no"),
              ),
              decoration: BoxDecoration(
                  color: Colors.blueGrey
              ),
            ),
            // DrawerHeader(
            //     child: CircleAvatar(
            //       backgroundImage: NetworkImage(
            //           "https://lh3.googleusercontent.com/a/ACg8ocJ13rhrBpbk1rPNom7VDhUg-8I_SUTQ2UtTGhomswUHG-U=s360-c-no"),
            //     ),
            //   decoration: BoxDecoration(
            //       color: Colors.blueGrey
            //   ),
            // ),
            drawermenu()
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(
          top: 40,
          left: 20,
          right: 20,
        ),
        color: Colors.white,
        child: ListView(
          children: [
            // const Row(
            //   children: [
            //     Icon(
            //       Icons.menu,
            //       size: 35,
            //     ),
            //     SizedBox(
            //       width: 300,
            //     ),
            //     Icon(
            //       Icons.settings,
            //       size: 35,
            //     ),
            //   ],
            // ),
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
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FilterPage()));
                      },
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
            const Padding(
              padding: EdgeInsets.only(right: 240),
              child: Text(
                "Most Popular",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SliderPage(
                    imagePath: "assets/ui-ux.png",
                    iconBookmark: Icon(
                      Icons.bookmark,
                    ),
                    jobRole: "UI/UX Designer",
                    address: "CodeX Labs - Colombo , Sri Lanka.",
                    salary: "9K",
                    tag: "Remote",
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  SliderPage(
                    imagePath: "assets/coding_3242257.png",
                    iconBookmark: Icon(
                      Icons.bookmark,
                    ),
                    jobRole: "Web Developer",
                    address: "99X Technology - Colombo 03",
                    salary: "8K",
                    tag: "Full Time",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    height: 40,
                    width: 250,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 198, 188, 188),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Interaction Designer",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 198, 188, 188),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Technical Lead",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 198, 188, 188),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Software Engineer",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 198, 188, 188),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Data Scientist",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 180, bottom: 20),
              child: Text(
                "Recomended for you",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const Column(
              children: [
                SliderPage(
                  imagePath: "assets/ui-ux.png",
                  iconBookmark: Icon(
                    Icons.bookmark,
                  ),
                  jobRole: "UI/UX Designer",
                  address: "CodeX Labs - Colombo , Sri Lanka.",
                  salary: "9K",
                  tag: "Remote",
                ),
                SizedBox(
                  height: 10,
                ),
                SliderPage(
                  imagePath: "assets/coding_3242257.png",
                  iconBookmark: Icon(
                    Icons.bookmark,
                  ),
                  jobRole: "Web Developer",
                  address: "99X Technology - Colombo 03",
                  salary: "8K",
                  tag: "Full Time",
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
