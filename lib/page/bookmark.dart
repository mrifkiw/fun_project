import 'dart:ui';
import 'package:fun_project/utils/list_bookmark.dart';
import 'package:flutter/material.dart';
import 'package:fun_project/components/book_card.dart';

class Bookmark extends StatelessWidget {
  final ListBookmark listBook = ListBookmark();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(110, 38, 100.5, 31),
                child: Text(
                  'Bookmark',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.amber,
                  ),
                ),
              ),
            ),
            for (var index = 0; index <= listBook.getListLength(); index++)
              {
                ListBookCard(
                  rating: listBook.getRating(index),
                  distance: listBook.getDistance(index),
                  title: listBook.getTitle(index),
                  author: listBook.getAuthor(index),
                  condition: listBook.getCondition(index),
                  image: listBook.getImage(index),
                )
              }
          ],
        ),
      ),
    );
  }
}
