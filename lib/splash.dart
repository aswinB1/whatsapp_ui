import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wp_clone/home.dart';

class Splash extends StatefulWidget {
  Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  Future delay()async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (cnxt){
       return MainPage();
    }
    ));
  }
  @override
  void initState() {
    // TODO: implement initState
    delay();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(mainAxisAlignment:  MainAxisAlignment.center,
        children: [
          Center(
              child: Image.asset("asset/WhatsApp-Logo-PNG-Isolated-File.png",
                  height: 80)),
          Align(child: Padding(
            padding:  EdgeInsets.all(10),
            // child: Text("from"),
          ), alignment: Alignment.bottomCenter),
        ],
      )),
    );
  }
}
