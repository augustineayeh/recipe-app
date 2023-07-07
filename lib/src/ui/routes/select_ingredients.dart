import 'package:cook_that_thing/src/models/models.dart';
import 'package:cook_that_thing/src/routes/routes.dart';
import 'package:cook_that_thing/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SelectIngredientScreen extends StatefulWidget {
  const SelectIngredientScreen({super.key});

  @override
  State<SelectIngredientScreen> createState() => _SelectIngredientScreenState();
}

class _SelectIngredientScreenState extends State<SelectIngredientScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const BackButton(),
          title: const Text('Step 1'),
          actions: const [
            SkipWidget(route: SelectChefsScreen()),
          ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(children: [
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Choose your favourite ingredients',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          const SizedBox(
            height: 30,
          ),
          GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                  childAspectRatio: 2.5),
              itemCount: ingredients.length,
              itemBuilder: (context, index) {
                final ingredient = ingredients[index];
                return IngredientWidget(ingredient: ingredient, index: index);
              }),
          const SizedBox(
            height: 400,
          ),
          const OrangeButton(
            text: 'Next',
            route: SelectChefsScreen(),
          )
        ]),
      ),
    );
  }
}
