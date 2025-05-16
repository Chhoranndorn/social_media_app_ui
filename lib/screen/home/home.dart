import 'package:flutter/material.dart';
import 'package:homework2/screen/new_feed/new_feed.dart';
import 'package:homework2/util/images.dart';
import 'package:homework2/view/basewidget/textfield/custom_search_widget.dart';

class HomeScreen extends StatelessWidget {
  final List<String> images = [
    Images.girl,
    Images.girl,
    Images.girl,
    Images.girl,
  ];
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            /// Main Content
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Top Row with Camera, Search, and Messenger Icon
                    Row(
                      children: [
                        const Icon(Icons.camera_alt_outlined),
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: CustomSearchBar(
                              borderRadius: 25,
                            ),
                          ),
                        ),
                        Image.asset(
                          Images.messenger,
                          scale: 20,
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),

                    /// Stories Header Row
                    const Row(
                      children: [
                        Text(
                          "Stories",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Text(
                              "See Archive",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.arrow_right),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),

                    /// Horizontal ListView for Stories
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: images.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 110,
                            margin: const EdgeInsets.symmetric(horizontal: 6),
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                      image: AssetImage(images[index]),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 8,
                                  left: 8,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.black54,
                                      shape: BoxShape.circle,
                                    ),
                                    padding: const EdgeInsets.all(6),
                                    child: const Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 8,
                                  left: 8,
                                  right: 8,
                                  child: Container(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 4),
                                    child: const Text(
                                      'Add Your Story',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),

                    /// Posts List
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: images.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            margin: const EdgeInsets.all(10),
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
                                    const SizedBox(width: 15),
                                    const Text(
                                      "Jordan Praise ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
                                    ),
                                    const Text("updated his cover photo "),
                                    const Spacer(),
                                    Image.asset(
                                      Images.dotIcon,
                                      scale: 30,
                                    ),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 55),
                                  child: Text("3 mins ago"),
                                ),
                                const SizedBox(height: 15),
                                GestureDetector(
                                  onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => NewFeedScreen())),
                                  child: Container(
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
                                  ),
                                ),
                                const SizedBox(height: 20),
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
                                const Divider(
                                  color: Colors.grey,
                                  thickness: 0.3,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 50),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        Images.likeIcon,
                                        width: 20,
                                      ),
                                      const SizedBox(width: 5),
                                      const Text("Like"),
                                      const Spacer(),
                                      const Icon(Icons.message_outlined),
                                      const SizedBox(width: 5),
                                      const Text("Comment"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),

            /// Floating Button at Bottom Right
            Positioned(
              bottom: 16,
              right: 16,
              child: GestureDetector(
                onTap: () {
                  // Add your onTap functionality here
                  print('Add button tapped');
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
