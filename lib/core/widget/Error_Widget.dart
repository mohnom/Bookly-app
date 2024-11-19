import 'package:booly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ErrorsWidget extends StatelessWidget {
  const ErrorsWidget({super.key,required this.errMessege});
  final String  errMessege;
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text(errMessege ,style: Styles.textStyle18,),
    );
  }
}
