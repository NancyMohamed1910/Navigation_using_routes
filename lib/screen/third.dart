
import 'package:flutter/material.dart';

class MyThird extends StatefulWidget {
  const MyThird({super.key});

  @override
  State<MyThird> createState() => _MyThirdState();
}

class _MyThirdState extends State<MyThird> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          centerTitle: true,
          title: Text('My third screen'),
        ),
        body: Container(color: Colors.orange,
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
                    Navigator.pushNamed(context, '/third/third1');
                  },
                  child: Text('Back to Third_1 screen'),
                ),
              ],
            ),
          ),
        )
    );
  }
}
