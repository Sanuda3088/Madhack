import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jobfinder/Applicant/components/drawerview.dart';
import 'package:jobfinder/Controllers/userdividingpage.dart';
import 'package:jobfinder/Employer/components/recentjobposts.dart';
import 'package:jobfinder/Employer/multistepform.dart';
import 'package:jobfinder/globals.dart';

class EmployerHomePage extends StatefulWidget {
  const EmployerHomePage({super.key});

  @override
  State<EmployerHomePage> createState() => _EmployerHomePageState();
}

class _EmployerHomePageState extends State<EmployerHomePage> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
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
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 17, 24, 119),
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
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const EmployerHomePage(),
                  ),
                );
              },
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                signOut();
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const UserDividingPage(),
                  ),
                );
              },
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
                      elevatedButton(
                          text: 'Post a Job',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MultiStepForm()),
                            );
                          })
                    ],
                  ),
                ),
                const Text('job post content goes here'),
                Column(
                  children: [
                    /* const RecentJobPosts(
                      jobRole: "Ui/UX",
                      address: 'Gampaha',
                      salary: '10',
                      tag: 'tag',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const RecentJobPosts(
                      jobRole: "Ui/UX",
                      address: 'Gampaha',
                      salary: '10',
                      tag: 'tag',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const RecentJobPosts(
                      jobRole: "Ui/UX",
                      address: 'Gampaha',
                      salary: '10',
                      tag: 'tag',
                    ),
                    */
                    FutureBuilder<List<QueryDocumentSnapshot>>(
                      future: getJobPosts(),
                      builder: (BuildContext context,
                          AsyncSnapshot<List<QueryDocumentSnapshot>> snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const CircularProgressIndicator();
                        } else if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else {
                          return Column(
                            children: snapshot.data!.map((doc) {
                              return RecentJobPosts(
                                jobRole: doc['jobposition'],
                                address: doc['location'],
                                salary: doc['salarymax'],
                                tag: doc['jobType'],
                              );
                            }).toList(),
                          );
                        }
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<List<QueryDocumentSnapshot>> getJobPosts() async {
    User? currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      try {
        QuerySnapshot querySnapshot = await FirebaseFirestore.instance
            .collection('Employer')
            .doc(currentUser.uid)
            .collection('JobPosts')
            .get();
        return querySnapshot.docs;
      } catch (e) {
        print('Error getting job posts: $e');
        return [];
      }
    } else {
      print('No current user');
      return [];
    }
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
