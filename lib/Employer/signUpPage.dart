import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:jobfinder/globals.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  String? errorMessage = '';
  late double width;
  late double height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text("Create an Account",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.all(20),
                child: LoginForm(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget LoginForm() {
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
            prefixIcon: const Icon(Icons.account_circle)
          ),
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
            decoration: 
            textFieldDecoration(
              labelText: 'Email', 
              hintText: 'Enter your email',
              prefixIcon: const Icon(Icons.email)
              ),
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
              prefixIcon: const Icon(Icons.lock_open)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: _errorMessage(),
          ),
          ElevatedButton(
            onPressed: () {} /* => signInWithEmailAndPassword(context)*/,
            style: ElevatedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 243, 242, 234),
              backgroundColor: const Color.fromARGB(255, 10, 4, 70),
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 20,
                left: 40,
                right: 40,),
              textStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              elevation: 5,
              side: const BorderSide(
                color: Color.fromARGB(255, 249, 252, 251),
                width: 4,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'Sign Up',   
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          TextButton(
            onPressed:
                () {} /*=> Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const UserSignUpPage()))*/
            ,
            child: const Text(
              'Don\'t have an account? Sign Up',
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 10, 4, 70),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 1.0),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Forgot Password?',
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 10, 4, 70),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 1.0),
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

  Widget _errorMessage() {
    return Text("errorMessage == '' ? '' : 'Humm ? $errorMessage");
  }

}
