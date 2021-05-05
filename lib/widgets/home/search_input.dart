import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140.0,
      height: 35.0,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 22.0, right: 10.0),
            child: Icon(Icons.search),
          ),
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14.0),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade100,
              width: 1.0,
            ),
            borderRadius: const BorderRadius.all(
              const Radius.circular(15.0),
            ),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0)
                  .copyWith(right: 10.0),
        ),
      ),
    );
  }
}
