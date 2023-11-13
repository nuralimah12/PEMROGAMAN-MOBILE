import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cupertiono"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Delete Item"),
                  content: Text("Are you sure?"),
                  actions: [
                    TextButton(
                      onPressed: () {},
                      child: Text("Yes"),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("No"),
                    ),
                  ],
                );
              },
            );
          },
          child: Text("Alert Dialog"),
        ),
      ),
    );
  }
}
