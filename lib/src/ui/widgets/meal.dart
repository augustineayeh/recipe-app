// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cook_that_thing/src/models/models.dart';
import 'package:cook_that_thing/src/routes/meal_detail.dart';
import 'package:cook_that_thing/src/utils/app_colors.dart';
import 'package:flutter/material.dart';

class MealWidget extends StatefulWidget {
  final Meal meal;
  final int index;

  const MealWidget({
    Key? key,
    required this.meal,
    required this.index,
  }) : super(key: key);

  @override
  State<MealWidget> createState() => _MealWidgetState();
}

class _MealWidgetState extends State<MealWidget> {
  bool isfavorited = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MealDetailScreen(
                      meal: widget.meal,
                      index: widget.index,
                    )));
      },
      child: Material(
        elevation: 5,
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Stack(children: [
              Container(
                height: 110,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                  widget.meal.imageUrl,
                ))),
              ),
              Positioned(
                  right: 15,
                  top: -5,
                  child: IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: isfavorited ? Colors.red : Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        isfavorited = !isfavorited;
                      });
                    },
                  ))
            ]),
            const SizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 5),
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    widget.meal.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, bottom: 8),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundImage: AssetImage(widget.meal.chefImageUrl),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(widget.meal.chef)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors.deepGrey),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.equalizer,
                          size: 15,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          'Easy',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors.deepGrey),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.timer_outlined,
                          size: 15,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(widget.meal.duration,
                            style: const TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
