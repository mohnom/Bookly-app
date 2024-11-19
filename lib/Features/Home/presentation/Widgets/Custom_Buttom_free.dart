import 'package:booly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:booly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomButtomFree extends StatelessWidget {
  const CustomButtomFree({super.key,required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: TextButton(
          onPressed: () async{
              Uri uri = Uri.parse(bookModel.volumeInfo?.previewLink??'');
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri);
            }
          },
          style: TextButton.styleFrom(
            backgroundColor: Color(0xffEF8262),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
          ),
          child: Text(
            ' Preview',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
