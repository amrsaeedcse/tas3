import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextField(
        expands: true,
        maxLines: null,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.red[50],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          prefixIcon: Icon(Icons.search_outlined, size: 30),
          hintText: "Search for food",
          hintStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        ),
      ),
    );
  }
}
