import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PageTwo extends StatefulWidget {
  final String name;
  // final int index;
  PageTwo({Key? key, required this.name}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(title: Text("person"), backgroundColor: Colors.green[700]),
        body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                        decoration: InputDecoration(
                            // label: Text("Message"),
                            prefixIcon: Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      print("add icon pressed");
                                    },
                                    icon: Icon(Icons.add)),
                                IconButton(
                                  onPressed: () {
                                    print("emoji icon pressed");
                                  },
                                  icon: Icon(Icons.emoji_emotions_rounded),
                                ),
                              ],
                            ),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  print("camera icon pressed");
                                },
                                icon: Icon(
                                  Icons.camera_alt,
                                )),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40)))),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      print("voive button tapped");
                    },
                    icon: Icon(
                      Icons.keyboard_voice_rounded,
                      color: Colors.blue,
                    )),
                    
                    
              ],
            ),
          ]),
          
        )
        )
        ;
  }
}
