import 'dart:ffi';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jobfinder/Controllers/auth.dart';
import 'package:jobfinder/Employer/homepage.dart';
import 'package:jobfinder/Employer/loginPage.dart';
import 'package:jobfinder/globals.dart';

class EMPSignUpPage extends StatefulWidget {
  const EMPSignUpPage({super.key});

  @override
  State<EMPSignUpPage> createState() => _EMPSignUpPageState();
}

class _EMPSignUpPageState extends State<EMPSignUpPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  String? errorMessage = '';
  late double width;
  late double height;

  Future createUserWithEmailAndPassword(BuildContext context) async {
    try {
      await Auth().createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      // Get the currently signed-in user
      User? user = FirebaseAuth.instance.currentUser;

      // Update the user's display name
      await user?.updateDisplayName(_nameController.text);

      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const EmployerHomePage()));
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Widget _errorMessage() {
    return Text(errorMessage == '' ? '' : 'Humm ? $errorMessage');
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "Create an Account",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: loginForm(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget loginForm() {
    return Form(
      child: Column(
        children: [
          const Text(
            'Sign Up',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 30, 31, 30),
            ),
          ),
          /*Image.asset(
            'lib/Assets/RegisterPages/user.png',
            width: double.infinity,
            height: 70,
            fit: BoxFit.contain,
          ),*/
          TextFormField(
            controller: _nameController,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your name';
              }
              return null;
            },
            decoration: textFieldDecoration(
                labelText: 'Name',
                hintText: 'Enter your Name',
                prefixIcon: const Icon(Icons.account_circle)),
          ),
          const SizedBox(
            height: 15,
          ),
          // email Textfield
          TextFormField(
            controller: _emailController,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email address';
              }
              if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                return 'Please enter a valid email address';
              }

              return null;
            },
            decoration: textFieldDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
                prefixIcon: const Icon(Icons.email)),
          ),
          const SizedBox(height: 15),
          //password field
          TextFormField(
            controller: _passwordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              if (value.length < 6) {
                return 'Password must be at least 6 characters in length';
              }
              if (value != _passwordController.text) {
                return 'Confirm password doesn\'t match the password';
              }
              return null;
            },
            obscureText: true,
            decoration: textFieldDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
                prefixIcon: const Icon(Icons.lock_open)),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: _errorMessage(),
          ),
          elevatedButton(
              text: 'Sign Up',
              onPressed: () {
                createUserWithEmailAndPassword(context);
              }),
          const SizedBox(height: 8.0),
          TextButton(
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => const EMPLoginPage()),
              );
            },
            child: const Text(
              'Have an account? Login here',
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 10, 4, 70),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          /*Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  'lib/Assets/RegisterPages/google.png',
                  width: 30,
                  height: 30,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                width: 3,
              ),
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  'lib/Assets/RegisterPages/facebook.png',
                  width: 60,
                  height: 60,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                width: 1,
              ),
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  'lib/Assets/RegisterPages/apple.png',
                  width: 40,
                  height: 40,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),*/
        ],
      ),
    );
  }
}
