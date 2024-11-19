import 'package:booly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:booly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: TextButton(
          onPressed: ()  {
          
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(15))),
          ),
          child: Text(
            'Free',
            style: Styles.textStyle16.copyWith(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
