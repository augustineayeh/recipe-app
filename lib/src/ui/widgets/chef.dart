// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cook_that_thing/src/core/models/models.dart';
import 'package:cook_that_thing/src/ui/routes/chef_detail.dart';
import 'package:flutter/material.dart';

class ChefWidget extends StatefulWidget {
  final Chef chef;
  final int index;
  const ChefWidget({
    Key? key,
    required this.chef,
    required this.index,
  }) : super(key: key);

  @override
  State<ChefWidget> createState() => _ChefWidgetState();
}

class _ChefWidgetState extends State<ChefWidget> {
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (conetxt) =>
                    ChefDetailsScreen(chef: widget.chef, index: widget.index)));
      },
      child: Column(
        children: [
          Material(
            child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(widget.chef.imageUrl),
                  radius: 30,
                ),
                title: Text(
                  widget.chef.name,
                  style: const TextStyle(fontSize: 20),
                ),
                subtitle: Text('${widget.chef.numberOfRecipes} recipes',
                    style: const TextStyle(color: Colors.grey, fontSize: 16)),
                trailing: IconButton(
                  icon: Icon(
                    isFavorited ? Icons.favorite : Icons.favorite_border,
                    color: Colors.black,
                    size: 25,
                  ),
                  onPressed: () {
                    setState(() {
                      isFavorited = !isFavorited;
                    });
                  },
                )),
          ),
          const Divider()
        ],
      ),
    );
  }
}
