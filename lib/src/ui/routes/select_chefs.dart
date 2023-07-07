import 'package:cook_that_thing/src/models/models.dart';
import 'package:cook_that_thing/src/routes/routes.dart';
import 'package:cook_that_thing/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SelectChefsScreen extends StatefulWidget {
  const SelectChefsScreen({super.key});

  @override
  State<SelectChefsScreen> createState() => _SelectChefsScreenState();
}

class _SelectChefsScreenState extends State<SelectChefsScreen> {
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
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Choose your favourite chefs',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 650,
              child: ListView.builder(
                  itemCount: chefs.length,
                  itemBuilder: (context, index) {
                    final chef = chefs[index];
                    return ChefWidget(chef: chef, index: index);
                  }),
            ),
            const SizedBox(
              height: 20,
            ),
            const OrangeButton(text: 'Finish', route: HomePage())
          ],
        ),
      ),
    );
  }
}
