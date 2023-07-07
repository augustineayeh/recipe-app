// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cook_that_thing/src/utils/app_colors.dart';
import 'package:flutter/material.dart';

class RecipeWidget extends StatefulWidget {
  final String recipe;
  final int index;
  const RecipeWidget({
    Key? key,
    required this.recipe,
    required this.index,
  }) : super(key: key);

  @override
  State<RecipeWidget> createState() => _RecipeWidgetState();
}

class _RecipeWidgetState extends State<RecipeWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            color: isSelected ? AppColors.orange : Colors.white,
            border: Border.all(color: isSelected ? Colors.white : Colors.black),
            borderRadius: BorderRadius.circular(20)),
        child: Center(
            child: Text(
          widget.recipe,
          style: TextStyle(color: isSelected ? Colors.white : Colors.black),
        )),
      ),
    );
  }
}
