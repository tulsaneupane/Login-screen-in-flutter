import 'package:flutter/material.dart';

class GeneralPage extends StatelessWidget {
  const GeneralPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('General Knowledge'),
        backgroundColor: Colors.pink,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Read a Book',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 141, 64, 64),
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Text(
                'Books are a uniquely portable magic. Reading books can take you to places you have never been, provide perspectives you have never considered, and allow you to experience emotions and situations that you may never encounter in your life. A good book can be a companion, a mentor, or even an escape. Reading 1000 words a day can not only enhance your knowledge but also improve your cognitive skills, such as comprehension, focus, and imagination. It can reduce stress, expand your vocabulary, and even improve your writing skills. Many great minds have emphasized the importance of reading books. They provide an unparalleled depth of knowledge and insights compared to other forms of media. Reading also fosters empathy by exposing you to different cultures, beliefs, and experiences. In a world dominated by digital distractions, taking time to sit down with a book can be a calming and rewarding experience. It is an investment in yourself and your personal growth. So, find a book that intrigues you, set a comfortable reading space, and immerse yourself in the magic of words. Whether it is fiction, non-fiction, or poetry, every genre has its unique charm and lessons to offer. Let reading become a habit, and let it transform your life for the better. Remember, a book is a dream you hold in your hands. Read more, learn more, and grow more.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  height: 1.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
