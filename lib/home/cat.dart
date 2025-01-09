import 'package:flutter/material.dart';
import 'package:logingpage/home/culture.dart';
import 'package:logingpage/home/generalpage.dart';
import 'package:logingpage/home/miscellinious.dart';
import 'package:logingpage/home/sports.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
        backgroundColor: Colors.pink,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        children: [
          _buildCategoryBox(context, 'General Knowledge  '),
          _buildCategoryBox(context, 'Culture and Language'),
          _buildCategoryBox(context, 'Sports and Game'),
          _buildCategoryBox(context, 'Miscellaneous'),
        ],
      ),
    );
  }

  Widget _buildCategoryBox(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        if (title == 'General Knowledge  ') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GeneralPage()),
          );
        }
        if (title == 'Culture and Language  ') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CulturePage()),
          );
        }
        if (title == 'Sports and Game  ') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SportPage()),
          );
        }
        if (title == 'Miscellaneous ') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MiscellaneousPage()),
          );
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue[100],
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              // ignore: deprecated_member_use
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ),
      ),
    );
  }
}
