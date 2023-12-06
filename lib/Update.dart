import 'package:flutter/material.dart';
import 'package:whatsapp_by_newbies/updates.dart';

class Update extends StatelessWidget {
  const Update({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Status",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Icon(
                Icons.more_vert,
                color: Colors.grey,
                size: 30,
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(12, (index) => Status()),
            ],
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Divider(
          color: Colors.grey,
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Channels",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Icon(
                Icons.add,
                color: Colors.grey,
                size: 30,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 20,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Word Pasture',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                width: 282,
                height: 85,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.camera_alt_outlined),
                        Text(
                          'Amen!! I am strong! I prevail!! I will',
                          style: TextStyle(fontSize: 17),
                        )
                      ],
                    ),
                    Text(
                      'shout in victory and rejoice in the',
                      style: TextStyle(fontSize: 17),
                    ),
                    Text(
                      'salvation of my God!! Halle...',
                      style: TextStyle(fontSize: 17),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('10:34'),
                  ],
                ),
              ),
            ),
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.all(Radius.circular(13))),
            )
          ],
        ),
        SizedBox(
          height: 7,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Divider(
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: 18,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Find channels",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Text(
                'See all',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.teal[700],
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 7,
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.teal[700],
                size: 25,
              ),
            ],
          ),
        )
      ],
    );
  }
}
