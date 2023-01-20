import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool myNewButton = false;
  String myText = "Hello";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Flutter Coding Exercise")),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("My Body"),
            Text("My Body"),
            Text("My Body"),
            Center(child: ElevatedButton(onPressed: () {
              setState(() {
                myNewButton = !myNewButton;
                debugPrint(myNewButton.toString());
              });
            }, child: Text("Click"))),
            Container(
              color: Colors.yellow,
              height: 100,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(myNewButton ? "Hello": "Hi" ),
                  Text("My Row"),
                  Text("My Row"),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
          child: IconButton(
            icon: const Icon(Icons.home, color: Colors.white),
            onPressed: () {
              debugPrint("Test bottom nav");
            },
          ),
        ),
      ),
    );
  }
}
