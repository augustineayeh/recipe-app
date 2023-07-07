// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cook_that_thing/src/models/models.dart';
import 'package:cook_that_thing/src/routes/routes.dart';
import 'package:cook_that_thing/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SelectRecipeScreen extends StatefulWidget {
  const SelectRecipeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SelectRecipeScreen> createState() => _SelectRecipeScreenState();
}

class _SelectRecipeScreenState extends State<SelectRecipeScreen> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const BackButton(),
          title: const Text('Step 1'),
          actions: const [
            SkipWidget(route: SelectIngredientScreen()),
          ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(children: [
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Choose your favourite recipes',
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
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 20,
                  childAspectRatio: 2.5),
              itemCount: recipes.length,
              itemBuilder: (context, index) {
                final recipe = recipes[index];
                return RecipeWidget(recipe: recipe, index: index);
              }),
          const SizedBox(
            height: 400,
          ),
          const OrangeButton(text: 'Next', route: SelectIngredientScreen())
        ]),
      ),
    );
  }
}
