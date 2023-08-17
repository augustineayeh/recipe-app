import 'package:cook_that_thing/src/constants/app_colors.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          PageView(
            children: [
              Column(
                children: [
                  Image.asset(''),
                  const Text('Discovery'),
                  const Text(
                      'Discover new and exciting recipe to delight your taste buds')
                ],
              ),
              Column(
                children: [
                  Image.asset(''),
                  const Text('Recipe Collection'),
                  const Text(
                      'Create a collection of your favourite recipes and share with others')
                ],
              ),
              Column(
                children: [
                  Image.asset(''),
                  const Text('World Class Chefs'),
                  const Text(
                      'Explore world class recipes from top chefs across the world')
                ],
              )
            ],
          ),
          Container(
            decoration: const BoxDecoration(color: AppColors.orange),
            child: const Text('Log In'),
          ),
          Container(
            decoration: const BoxDecoration(color: AppColors.orange),
            child: const Text(
              'Register',
              style: TextStyle(color: AppColors.orange),
            ),
          )
        ],
      ),
    );
  }
}
