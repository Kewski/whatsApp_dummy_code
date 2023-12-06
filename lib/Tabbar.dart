import 'package:flutter/material.dart';

class WhatsappChat extends StatelessWidget {
  const WhatsappChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 10, right: 15),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            // backgroundImage: AssetImage('Images/looking.jpg'),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Michael',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'Hey There, Are you using WhatsApp?',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                )
              ],
            ),
          ),
          // SizedBox(
          //   width: 15,
          // ),
          Spacer(),

          Container(
            child: Column(
              children: [
                Text(
                  '9:27',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontSize: 16),
                ),
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.green,
                  child: Text(
                    '4',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
