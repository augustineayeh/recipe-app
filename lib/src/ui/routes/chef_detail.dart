import 'package:cook_that_thing/src/core/models/models.dart';
import 'package:flutter/material.dart';

class ChefDetailsScreen extends StatelessWidget {
  final Chef chef;
  final int index;

  const ChefDetailsScreen({
    Key? key,
    required this.chef,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(clipBehavior: Clip.none, children: [
              Container(
                height: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(chef.imageUrl))),
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
                            chef.name,
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
                                  Text('World class',
                                      style: TextStyle(fontSize: 20)),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    size: 15,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    '${chef.rating}',
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
