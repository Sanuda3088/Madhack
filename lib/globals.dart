
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


//textfield decoration
InputDecoration textFieldDecoration({required String labelText, required String hintText, required Icon prefixIcon}) {
  return InputDecoration(
    labelText: labelText,
    hintText: hintText,
    prefixIcon: prefixIcon,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.blue, width: 2.0),
      borderRadius: BorderRadius.circular(10),
    ),
  );
}

ElevatedButton elevatedButton({required String text, required Function()? onPressed}) {
  return ElevatedButton(
    onPressed: onPressed,
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
    child: Text(text),
  );
}