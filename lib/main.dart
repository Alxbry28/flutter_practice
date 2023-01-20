import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
            Container(
              color: Colors.yellow,
              height: 100,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("My Row"),
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
