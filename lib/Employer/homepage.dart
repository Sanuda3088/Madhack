import 'package:flutter/material.dart';
import 'package:jobfinder/Applicant/components/drawerview.dart';
import 'package:jobfinder/Employer/components/recentjobposts.dart';
import 'package:jobfinder/globals.dart';

class EmployerHomePage extends StatefulWidget {
  const EmployerHomePage({super.key});

  @override
  State<EmployerHomePage> createState() => _EmployerHomePageState();
}

class _EmployerHomePageState extends State<EmployerHomePage> {
  final TextEditingController _searchController = TextEditingController();
  late double width;
  late double height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              /*
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DrawerView(),
                ),
              );*/
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Employer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(
              left: width * 0.025,
              right: width * 0.025,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: 10.0,
                                left: 10.0,
                              ),
                              child: TextFormField(
                                controller: _searchController,
                                obscureText: true,
                                decoration: textFieldDecoration(
                                  labelText: 'Search',
                                  hintText: 'Search',
                                  prefixIcon: const Icon(Icons.search),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: height * 0.075,
                            width: width * 0.15,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 66, 67, 67),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.manage_search_outlined,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                      elevatedButton(text: 'Post a Job', onPressed: () {})
                    ],
                  ),
                ),
                const Text('job post content goes here'),
                const Column(
                  children: [
                    RecentJobPosts(
                      imagePath: 'assets/ui-ux.png',
                      jobRole: "Ui/UX",
                      address: 'Gampaha',
                      salary: '10',
                      tag: 'tag',
                    ),
                    SizedBox(height: 10,),
                    RecentJobPosts(
                  imagePath: 'assets/ui-ux.png',
                  jobRole: "Ui/UX",
                  address: 'Gampaha',
                  salary: '10',
                  tag: 'tag',
                ),
                SizedBox(height: 10,),
                RecentJobPosts(
                  imagePath: 'assets/ui-ux.png',
                  jobRole: "Ui/UX",
                  address: 'Gampaha',
                  salary: '10',
                  tag: 'tag',
                ),
                  ],
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
