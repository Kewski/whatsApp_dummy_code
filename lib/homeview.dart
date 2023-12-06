import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:whatsapp_by_newbies/Tabbar.dart';
import 'package:whatsapp_by_newbies/Update.dart';
import 'updates.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      backgroundColor: Colors.teal.shade800,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'WhatsApp',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.more_vert,
                  size: 30,
                  color: Colors.white,
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.white,
              labelStyle: TextStyle(fontSize: 20),
              unselectedLabelColor: Colors.white54,
              tabs: [
                Tab(
                  text: 'Chats',
                ),
                Tab(
                  text: 'Updates',
                ),
                Tab(
                  text: 'Calls',
                )
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: double.maxFinite,
            height: 655,
            child: TabBarView(
              controller: _tabController,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [...List.generate(20, (index) => WhatsappChat())],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Update(),
                ),
                Text("Make calls here")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
