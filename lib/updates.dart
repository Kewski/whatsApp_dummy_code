import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 15, 0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            // backgroundImage: AssetImage('Images/laptopscr.jpg'),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            ' JOJO ',
            style: TextStyle(
                color: Colors.black, fontSize: 10, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
