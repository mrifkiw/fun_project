import 'package:flutter/material.dart';
import 'package:fun_project/components/book_card.dart';

class Bookmark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                'Bookmark',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.amber,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 24.0,
          ),
          BookCard(),
          BookCard(),
          BookCard(),
          BookCard(),
          BookCard(),
        ],
      ),
    );
  }
}
