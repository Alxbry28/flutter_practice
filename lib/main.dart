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
  int num = 0;

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
          mainAxisAlignment: num == 0
              ? MainAxisAlignment.start
              : num == 2
                  ? MainAxisAlignment.end
                  : MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: num == 0
                  ? MainAxisAlignment.start
                  : num == 2
                      ? MainAxisAlignment.end
                      : MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        myNewButton = !myNewButton;
                        num++;
                        num = (num >= 3) ? 0 : num;
                      });
                    },
                    child: const Text("Click")),
              ],
            ),
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
