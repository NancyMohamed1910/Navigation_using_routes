import 'package:flutter/material.dart';


class MySecond extends StatefulWidget {
  const MySecond({super.key});

  @override
  State<MySecond> createState() => _MySecondState();
}

class _MySecondState extends State<MySecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('My second screen'),
        ),
        body: Container( color: Colors.greenAccent,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    //Navigator.pop(context);
                    Navigator.popAndPushNamed(context, '/');
                  },
                  child: Text('Back to main screen'),
                ),
                ElevatedButton(
                  onPressed: () {
                    //Navigator.pop(context);
                    Navigator.pushNamed(context, '/second/second1');
                  },
                  child: Text('Go to Second_1 screen'),
                ),
                ElevatedButton(
                  onPressed: () {
                    //Navigator.pop(context);
                    Navigator.pushNamed(context, '/second/second2');
                  },
                  child: Text('Go to Second_2 screen'),
                ),
              ],
            ),
          ),
        ));
  }
}
