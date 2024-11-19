import 'package:flutter/material.dart';

class CustomTextFit extends StatelessWidget {
  const CustomTextFit({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(12)),
            hintText: 'Searsh',
            suffix: IconButton(onPressed: () {}, icon: Icon(Icons.search))));
  }
}
