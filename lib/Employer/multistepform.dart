import 'dart:math';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jobfinder/Employer/homepage.dart';
import 'package:jobfinder/globals.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MultiStepForm extends StatefulWidget {
  @override
  _MultiStepFormState createState() => _MultiStepFormState();
}

class _MultiStepFormState extends State<MultiStepForm> {
  int _currentStep = 0;
  final _formKey = GlobalKey<FormState>();
  late TextEditingController industryController;
  late TextEditingController categoryController;
  late TextEditingController jobPositionController;
  late TextEditingController jobTypeController;
  late TextEditingController locationController;
  String? workspaceType;
  String? jobType;
  String? selectedIndustry;
  String? selectedJobPosition;
  RangeValues salaryRange = const RangeValues(0, 200);
  /*late GoogleMapController mapController;
  late Position currentPosition;*/
  late TextEditingController jobDescriptionController;
  late TextEditingController requirementsController;
  late TextEditingController responsibilitiesController;
  late TextEditingController aboutCompanyController;
  final currentUser = FirebaseAuth.instance.currentUser;

  Map<String, List<String>> industryCategories = {
    'IT': [
      'Software Engineer',
      'Ui/UX Designer',
      'Business Analyst',
      'Data Scientist',
      'Cyber Security Analyst',
      'Network Engineer'
    ],
    'Manufacturing': ['Automotive', 'Textile', 'Food'],
    'Healthcare': ['Pharmaceutical', 'Biotechnology', 'Medical Devices'],
  };

  /**void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }*/

  /*void getCurrentLocation() async {
    currentPosition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    LatLng latLngPosition =
        LatLng(currentPosition.latitude, currentPosition.longitude);

    CameraPosition cameraPosition =
        new CameraPosition(target: latLngPosition, zoom: 14);
    mapController.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
  }*/

  @override
  void initState() {
    super.initState();
    industryController = TextEditingController();
    categoryController = TextEditingController();
    jobPositionController = TextEditingController();
    jobTypeController = TextEditingController();
    locationController = TextEditingController();
    jobDescriptionController = TextEditingController();
    requirementsController = TextEditingController();
    responsibilitiesController = TextEditingController();
    aboutCompanyController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Stepper(
            currentStep: _currentStep,
            onStepContinue: () {
              if (_currentStep == 0 && selectedIndustry == null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Please select an industry')),
                );
              } else if (_currentStep == 1 && selectedJobPosition == null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Please select a job position')),
                );
              } else if (_currentStep == 2 && jobType == null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Please select a job type')),
                );
              } else if (_currentStep == 3 && workspaceType == null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content: Text('Please select a workspace type')),
                );
              } else if (_currentStep < 10) {
                setState(() => _currentStep += 1);
              }
            },
            onStepCancel: _currentStep > 0
                ? () => setState(() => _currentStep -= 1)
                : null,
            steps: [
              Step(
                title: const Text('Industry'),
                content: DropdownButtonFormField<String>(
                  value: selectedIndustry,
                  validator: (value) {
                    if (value == null) {
                      return 'Please select an industry';
                    }
                    return null;
                  },
                  hint: const Text('Select industry'),
                  items: industryCategories.keys
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedIndustry = newValue;
                      selectedJobPosition =
                          null; // Reset the category when the industry changes
                    });
                  },
                ),
                isActive: _currentStep == 0,
              ),
              Step(
                title: const Text('Job Position'),
                content: DropdownButtonFormField<String>(
                  value: selectedJobPosition,
                  validator: (value) {
                    if (value == null) {
                      return 'Please select a job position';
                    }
                    return null;
                  },
                  hint: const Text('Select a Job Position'),
                  items: selectedIndustry == null
                      ? null
                      : industryCategories[selectedIndustry!]!
                          .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedJobPosition = newValue;
                    });
                  },
                ),
                isActive: _currentStep == 1,
              ),
              Step(
                title: const Text('Job Type'),
                content: DropdownButtonFormField<String>(
                  value: jobType,
                  validator: (value) {
                    if (value == null) {
                      return 'Please select a job type';
                    }
                    return null;
                  },
                  hint: const Text('Select job type'),
                  items: <String>['Full Time', 'Part Time', 'Contract Based']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      jobType = newValue;
                    });
                  },
                ),
                isActive: _currentStep == 2,
              ),
              Step(
                title: const Text('Workspace Type'),
                content: DropdownButtonFormField<String>(
                  value: workspaceType,
                  validator: (value) {
                    if (value == null) {
                      return 'Please select a workspace type';
                    }
                    return null;
                  },
                  hint: const Text('Select workspace type'),
                  items: <String>['On-site', 'Hybrid', 'Remote']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      workspaceType = newValue;
                    });
                  },
                ),
                isActive: _currentStep == 3,
              ),
              Step(
                title: const Text('Salary Level'),
                content: Column(
                  children: [
                    Text(
                        'Min: \$${salaryRange.start.round()} - Max: \$${salaryRange.end.round()}'),
                    RangeSlider(
                      values: salaryRange,
                      min: 0,
                      max: 200,
                      divisions: 5,
                      labels: RangeLabels(
                        salaryRange.start.round().toString(),
                        salaryRange.end.round().toString(),
                      ),
                      onChanged: (RangeValues newValues) {
                        setState(() {
                          salaryRange = newValues;
                        });
                      },
                    ),
                  ],
                ),
                isActive: _currentStep == 4,
              ),
              /*Step(
                title: const Text('Location'),
                content: SizedBox(
                  height: 200, // Adjust as needed
                  child: GoogleMap(
                    onMapCreated: _onMapCreated,
                    initialCameraPosition: const CameraPosition(
                      target: LatLng(0,
                          0), // This will be updated when we get the current location
                      zoom: 2,
                    ),
                  ),
                ),
                isActive: _currentStep == 5,
              ),*/
              Step(
                title: const Text('Location'),
                content: TextField(
                  controller: locationController,
                  decoration: const InputDecoration(
                    labelText: 'Enter the City & the Province',
                  ),
                ),
                isActive: _currentStep == 5,
              ),
              Step(
                title: const Text('Job Description'),
                content: TextField(
                  controller: jobDescriptionController,
                  decoration: const InputDecoration(
                    labelText: 'Enter job description',
                  ),
                ),
                isActive: _currentStep == 6,
              ),
              Step(
                title: const Text('Requirements'),
                content: TextField(
                  controller: requirementsController,
                  decoration: const InputDecoration(
                    labelText: 'Enter requirements',
                  ),
                ),
                isActive: _currentStep == 7,
              ),
              Step(
                title: const Text('Responsibilities'),
                content: TextField(
                  controller: responsibilitiesController,
                  decoration: const InputDecoration(
                    labelText: 'Enter responsibilities',
                  ),
                ),
                isActive: _currentStep == 8,
              ),
              Step(
                title: const Text('About the Company'),
                content: TextField(
                  controller: aboutCompanyController,
                  decoration: const InputDecoration(
                    labelText: 'Enter about the company',
                  ),
                ),
                isActive: _currentStep == 9,
              ),
              Step(title: const Text('Post Job'), content: _postjob()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _postjob() {
    return elevatedButton(
        text: 'Post Job',
        onPressed: () {
          if (_formKey.currentState!.validate() &&
              selectedIndustry != null &&
              selectedJobPosition != null &&
              jobType != null &&
              workspaceType != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Job posted successfully')),
            );
          }
          _jobpostsubmission();
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const EmployerHomePage()));

          print(workspaceType);
          print(jobType);
          print(selectedIndustry);
          print(selectedJobPosition);
        });
  }

  void _jobpostsubmission() async {
    try {
      await FirebaseFirestore.instance
          .collection('Employer')
          .doc(currentUser!.uid)
          .collection('JobPosts')
          .add({
        'industry': selectedIndustry,
        'jobposition': selectedJobPosition,
        'jobType': jobType,
        'workspaceType': workspaceType,
        'location': locationController.text,
        'salarymin': salaryRange.start.round().toString(),
        'salarymax': salaryRange.end.round().toString(),
        'jobDescription': jobDescriptionController.text,
        'requirements': requirementsController.text,
        'responsibilities': responsibilitiesController.text,
        'aboutCompany': aboutCompanyController.text,
        'employerId': currentUser!.uid,
        //'employerName': currentUser!.displayName,
        'employerEmail': currentUser!.email,
        //'employerPhotoUrl': currentUser!.photoURL,
        'timestamp': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Form Error'),
          content: const Text('Please fill in all the required fields.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }
}
