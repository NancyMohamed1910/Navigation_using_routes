import 'package:flutter/material.dart';
import 'package:navigation_router_example/screen/third.dart';
import 'package:navigation_router_example/screen/second.dart';
import 'package:navigation_router_example/screen/third_1.dart';
import 'package:navigation_router_example/screen/second_2.dart';
import 'package:navigation_router_example/screen/second_1.dart';



//import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}
//-------------------
// using go_router

//-------------------
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: MyMain(),
      initialRoute: '/', //home page-start page
      routes: {
        '/': (context) => MyMain(),
        '/second': (context) => MySecond(),
        '/second/second1': (context)=>MySecondOne(),
        '/second/second2':(contect)=>MySecondTwo(),
        '/third': (context) => MyThird(),
        '/third/third1':(context)=>MyThirdOne(),

      },
    );
  }
}

class MyMain extends StatefulWidget {
  const MyMain({super.key});

  @override
  State<MyMain> createState() => _MyMainState();
}

class _MyMainState extends State<MyMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Main Screen',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Center(
            ElevatedButton(
              onPressed: () {
                /*Navigator.push(
                      context, MaterialPageRoute(builder: (context) => MySecond()));*/
                Navigator.pushNamed(context, '/second');
              },
              child: Text('Go to second screen'),
            ),
            ElevatedButton(
              onPressed: () {
                /*Navigator.push(
                      context, MaterialPageRoute(builder: (context) => MySecond()));*/
                Navigator.pushNamed(context, '/third');
              },
              child: Text('Go to third screen'),
            ),
            //),
          ],
        ),
      ),
    );
  }
}
