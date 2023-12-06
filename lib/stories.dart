import 'package:flutter/material.dart';

class stories extends StatelessWidget {
  const stories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            height: 100,
            width: 100,
            child: CircleAvatar(
              radius: 20,
            ),
          )
        ],
      ),
    );
  }
}
