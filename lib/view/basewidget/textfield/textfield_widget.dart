import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;
  final Color borderColor;

  const SearchBarWidget({
    Key? key,
    this.width = 300,
    this.height = 50,
    this.borderRadius = 12,
    this.borderColor = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 1.5),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Add a Comment',
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  border: InputBorder.none,
                ),
              ),
            ),
            const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.gif),
                    Icon(Icons.emoji_emotions_outlined),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Custom SearchBar')),
        body: const Center(
          child: SearchBarWidget(
            width: 350,
            height: 60,
            borderRadius: 16,
            borderColor: Colors.blue,
          ),
        ),
      ),
    );
  }
}
