
import 'package:cook_that_thing/src/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SkipWidget extends StatelessWidget {
  final dynamic route;
  const SkipWidget({
    Key? key,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => route));
      },
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: AppColors.deepGrey,
              borderRadius: BorderRadius.circular(10)),
          child: const Text(
            'Skip',
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
