import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wp_clone/pagetwo.dart';
import 'package:wp_clone/status.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  List<Tab> Mytabs = <Tab>[
    Tab(
      text: "chats",
    ),
    Tab(
      text: "Status",
    ),
    Tab(
      text: "Calls",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
              title: Text("Chats"),
              bottom: TabBar(tabs: Mytabs),
              backgroundColor: Colors.green[700]),
          body: TabBarView(children: [StatusWp(), StatusWp(), StatusWp()]),
          backgroundColor: Colors.white60,
        ));
  }
}
