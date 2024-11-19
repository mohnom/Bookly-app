import 'package:flutter/material.dart';

class CustomLoding extends StatelessWidget {
  const CustomLoding({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const CircularProgressIndicator(),
    );
  }
}
