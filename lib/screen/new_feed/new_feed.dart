import 'package:flutter/material.dart';
import 'package:homework2/util/images.dart';
import 'package:homework2/view/basewidget/textfield/textfield_widget.dart';

class NewFeedScreen extends StatelessWidget {
  final List<String> images = [
    Images.girl,
    Images.girl,
    Images.girl,
    Images.girl,
  ];
  NewFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("feed"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      child: Image.asset(
                        Images.girl,
                        width: 15,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      "Anita Michaels",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text("Added 13 Photos to the"),
                    const Spacer(),
                    Image.asset(
                      Images.dotIcon,
                      scale: 30,
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 55),
                  child: Row(
                    children: [
                      Text("album "),
                      Text(
                        "Creative Photography ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 55),
                  child: Text("32 mins ago"),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Suspendisse nec elit vel erat aliquet molestie non vel",
                    ),
                    Text(
                        "nonc. Phasellus in porta erat, sed sollicitudin uma."),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          Images.girl,
                          width: double.infinity,
                          height: 170,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 130,
          child: BottomAppBar(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        Images.likeIcon,
                        width: 20,
                      ),
                      Image.asset(
                        Images.heartIcon,
                        width: 25,
                      ),
                      const Text("400"),
                      const Spacer(),
                      const Text("122 Comments"),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        Images.likeIcon,
                        width: 20,
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      const Expanded(
                        child: SearchBarWidget(
                          borderRadius: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
