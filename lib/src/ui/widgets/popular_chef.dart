// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cook_that_thing/src/core/models/models.dart';
import 'package:cook_that_thing/src/ui/routes/chef_detail.dart';
import 'package:flutter/material.dart';

class PopularChef extends StatelessWidget {
  final Chef chef;
  final int index;
  const PopularChef({
    Key? key,
    required this.chef,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    ChefDetailsScreen(chef: chef, index: index)));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(chef.imageUrl),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(chef.name)
          ],
        ),
      ),
    );
  }
}
