
import 'package:cook_that_thing/src/constants/app_colors.dart';
import 'package:flutter/material.dart';

class IngredientWidget extends StatefulWidget {
  final String ingredient;
  final int index;
  const IngredientWidget({
    Key? key,
    required this.ingredient,
    required this.index,
  }) : super(key: key);

  @override
  State<IngredientWidget> createState() => _IngredientWidgetState();
}

class _IngredientWidgetState extends State<IngredientWidget> {
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
        decoration: BoxDecoration(
            color: isSelected ? AppColors.orange : Colors.white,
            border: Border.all(color: isSelected ? Colors.white : Colors.black),
            borderRadius: BorderRadius.circular(20)),
        child: Center(
            child: Text(
          widget.ingredient,
          style: TextStyle(color: isSelected ? Colors.white : Colors.black),
        )),
      ),
    );
  }
}
