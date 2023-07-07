import 'package:cook_that_thing/src/models/models.dart';
import 'package:cook_that_thing/src/utils/app_colors.dart';
import 'package:cook_that_thing/src/widgets/widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                size: 30,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Categories',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'See more',
                        style: TextStyle(color: AppColors.orange),
                      ))
                ],
              ),
              SizedBox(
                height: 30,
                child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 10,
                        ),
                    scrollDirection: Axis.horizontal,
                    itemCount: recipes.length,
                    itemBuilder: (context, index) {
                      final recipe = recipes[index];
                      return RecipeWidget(recipe: recipe, index: index);
                    }),
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Popular chefs',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 85,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: chefs.length,
                    itemBuilder: (context, index) {
                      final chef = chefs[index];
                      return PopularChef(chef: chef, index: index);
                    }),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Cook like a pro',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'See more',
                        style: TextStyle(color: AppColors.orange),
                      ))
                ],
              ),
              GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: meals.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.93,
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemBuilder: ((context, index) {
                    final meal = meals[index];
                    return MealWidget(meal: meal, index: index);
                  }))
            ],
          ),
        ),
      ),
    );
  }
}
