// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cook_that_thing/src/core/models/models.dart';
import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  final Meal meal;
  final int index;

  const MealDetailScreen({
    Key? key,
    required this.meal,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final num screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(clipBehavior: Clip.none, children: [
              Container(
                height: 350,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          meal.imageUrl,
                        ))),
              ),
              Positioned(
                  left: (screenWidth - 300) / 2,
                  bottom: -55,
                  child: SizedBox(
                    width: 300,
                    height: 110,
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      elevation: 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            meal.name,
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Row(
                                children: [
                                  Icon(
                                    Icons.equalizer,
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text('Easy', style: TextStyle(fontSize: 20)),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.timer_outlined,
                                    size: 15,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    meal.duration,
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ))
            ])
          ],
        ),
      )),
    );
  }
}
