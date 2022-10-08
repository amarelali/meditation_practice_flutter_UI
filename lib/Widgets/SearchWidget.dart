import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderSide: BorderSide.none),
            prefixIcon: Icon(
              CupertinoIcons.search,
              color: Colors.black,
            ),
            hintText: 'Search',
          ),
        ),
      ),
    );
  }
}
