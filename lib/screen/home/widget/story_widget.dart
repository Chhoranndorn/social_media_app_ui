import 'package:flutter/material.dart';

class StoryModel {
  final String imageUrl;
  final String profileUrl;
  final String name;

  StoryModel(this.imageUrl, this.profileUrl, this.name);
}

class HomeScreen extends StatelessWidget {
  final List<StoryModel> stories = [
    StoryModel('https://via.placeholder.com/150',
        'https://via.placeholder.com/50', 'Add Your Story'),
    StoryModel('https://via.placeholder.com/160',
        'https://via.placeholder.com/50', 'Anita Michaels'),
    StoryModel('https://via.placeholder.com/170',
        'https://via.placeholder.com/50', 'Jordan Pralso'),
    StoryModel('https://via.placeholder.com/180',
        'https://via.placeholder.com/50', 'Mike Thompson'),
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Top Row with Camera, Search, and Messenger Icon
            Row(
              children: [
                const Icon(Icons.camera),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                      ),
                    ),
                  ),
                ),
                Icon(Icons.messenger, size: 28),
              ],
            ),
            const SizedBox(height: 20),

            /// Stories Header Row
            Row(
              children: [
                const Text(
                  "Stories",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Row(
                  children: const [
                    Text(
                      "See Archive",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.arrow_right),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),

            /// Horizontal ListView for Stories
            SizedBox(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: stories.length,
                itemBuilder: (context, index) {
                  final story = stories[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      children: [
                        /// Story Card
                        Stack(
                          children: [
                            /// Background Image
                            Container(
                              width: 100,
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                image: DecorationImage(
                                  image: NetworkImage(story.imageUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            /// Profile Image with Border
                            Positioned(
                              top: 10,
                              left: 10,
                              child: Container(
                                padding: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.blueAccent,
                                    width: 3,
                                  ),
                                ),
                                child: CircleAvatar(
                                  radius: 18,
                                  backgroundImage:
                                      NetworkImage(story.profileUrl),
                                ),
                              ),
                            ),

                            /// Add Icon for "Add Your Story"
                            if (index == 0)
                              const Positioned(
                                bottom: 10,
                                left: 38,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 12,
                                  child: Icon(Icons.add, color: Colors.blue),
                                ),
                              ),
                          ],
                        ),

                        /// Story Name
                        const SizedBox(height: 8),
                        SizedBox(
                          width: 100,
                          child: Text(
                            story.name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: HomeScreen()));
