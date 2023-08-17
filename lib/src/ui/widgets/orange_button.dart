// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cook_that_thing/src/constants/app_colors.dart';
import 'package:flutter/material.dart';

class OrangeButton extends StatelessWidget {
  final String text;
  final dynamic route;
  const OrangeButton({
    Key? key,
    required this.text,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.orange,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => route));
          },
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          )),
    );
  }
}
