import 'package:flutter/material.dart';
import 'package:jobfinder/Applicant/homeScreen.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  //industry drop down
  int myIndex1 = 0;
  String _dropdownvalue1 = 'Design & Development';
  bool _isDropdownOpen1 = true;

  List<String> listItem1 = [
    'Design & Development',
    'Telecommunication',
    'Cloud Computing & Hosting',
    'Data Analytics & Business Inteligence',
    'Cyber Security',
  ];

  //category drop down
  int myIndex2 = 0;
  String _dropdownvalue2 = 'UI/UX Design';
  bool _isDropdownOpen2 = true;

  List<String> listItem2 = [
    'UI/UX Design',
    'Web Design',
    'Mobile App Design',
    'Machine Learning and AI Technology',
    'Data Science and Data Analytics',
    'Graphic Design'
  ];
  //salary drop down

  int myIndex3 = 0;
  String _dropdownvalue3 = '0 - 2000K';
  bool _isDropdownOpen3 = true;

  List<String> listItem3 = [
    '0 - 2000K',
    '2000 - 4000K',
    '4000 - 6000K',
    '6000 - 8000K',
    '8000 - 10000K',
    '10000K<'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 20,
          left: 10,
          right: 10,
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 340, bottom: 10),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ApplicantHomeScreen()));
                  },
                  icon: const Icon(
                    Icons.keyboard_backspace,
                    color: Colors.black,
                    size: 35,
                    weight: 3.0,
                  )),
            ),
            const Center(
              child: Text(
                "Filter",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Industry",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 24),
            ),
            const SizedBox(
              height: 10,
            ),
            //industry drop down
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 0.3,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isDropdownOpen1 = !_isDropdownOpen1;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: DropdownButton(
                    //dropdownColor: const Color(0XFF22252B),
                    style: const TextStyle(color: Colors.black45, fontSize: 19),

                    underline: Container(),

                    padding: const EdgeInsets.all(5),

                    icon: const Icon(Icons.keyboard_arrow_down,
                        color: Colors.black),
                    iconSize: 35,
                    iconEnabledColor: Colors.white,
                    // Hide the hint text since we have a label
                    value: _dropdownvalue1,
                    items: listItem1.map((value1) {
                      return DropdownMenuItem(
                        value: value1,
                        child: Text(value1),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _dropdownvalue1 = newValue!;
                      });
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Category",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 24),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 0.3,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isDropdownOpen2 = !_isDropdownOpen2;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: DropdownButton(
                    style: const TextStyle(color: Colors.black45, fontSize: 19),

                    underline: Container(),

                    padding: const EdgeInsets.all(5),

                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black,
                    ),
                    iconSize: 35,
                    iconEnabledColor: Colors.white,
                    // Hide the hint text since we have a label
                    value: _dropdownvalue2,
                    items: listItem2.map((value2) {
                      return DropdownMenuItem(
                        value: value2,
                        child: Text(value2),
                      );
                    }).toList(),
                    onChanged: (String? newValue2) {
                      setState(() {
                        _dropdownvalue2 = newValue2!;
                      });
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Location",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 24),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              decoration: InputDecoration(
                  hintText: "\t\tSri Lanka",
                  hintStyle: TextStyle(fontSize: 19, color: Colors.black45),
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 0.3,
                      ))),
            ),
            const SizedBox(height: 20),

            // salary drop down
            const Text(
              "Salary",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 24),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 0.3,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isDropdownOpen3 = !_isDropdownOpen3;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: DropdownButton(
                    style: const TextStyle(color: Colors.black45, fontSize: 19),

                    underline: Container(),

                    padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),

                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black,
                    ),
                    iconSize: 35,
                    iconEnabledColor: Colors.white,
                    // Hide the hint text since we have a label
                    value: _dropdownvalue3,
                    items: listItem3.map((value3) {
                      return DropdownMenuItem(
                        value: value3,
                        child: Text(value3),
                      );
                    }).toList(),
                    onChanged: (String? newValue3) {
                      setState(() {
                        _dropdownvalue3 = newValue3!;
                      });
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 87, 86, 83),
                    padding: const EdgeInsets.only(
                        top: 12, bottom: 12, left: 80, right: 80),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Apply Filters",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
