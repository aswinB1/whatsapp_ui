import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'pagetwo.dart';

class StatusWp extends StatelessWidget {
   StatusWp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (cnxt) {
                        return PageTwo(name: "person$index");
                      }));
                    },
                    leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("asset/puppy.jpg")),
                    subtitle: Text("message$index"),
                    title: Text("person$index"),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemCount: 10)),
    );
  }
}