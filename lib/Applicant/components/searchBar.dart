import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextField(
        cursorColor: Colors.white,
        style: const TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[800], // Darker color for better contrast
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
            fontSize: 16.0,
            color: Colors.grey[400], // Lighter color for better visibility
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[800], // Match fill color
                borderRadius: BorderRadius.circular(8),
              ),
              width: 10,
              height: 10,
              child: const Icon(
                Icons.search,
                color: Colors.white, // Icon color
              ),
            ),
          ),
        ),
      ),
    );
  }
}
