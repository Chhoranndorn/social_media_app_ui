import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;
  final Color borderColor;

  const CustomSearchBar({
    Key? key,
    this.width = 300,
    this.height = 50,
    this.borderRadius = 12,
    this.borderColor = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: 1.5),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.search),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                hintStyle: TextStyle(color: Colors.grey.shade400),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
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
          child: CustomSearchBar(
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
