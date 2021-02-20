import 'dart:ui';
import 'package:fun_project/utils/list_bookmark.dart';
import 'package:flutter/material.dart';
import 'package:fun_project/components/book_card.dart';

final ListBookmark listBook = ListBookmark();

class Bookmark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          toolbarHeight: 100,
          title: Text(
            'Bookmark',
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w700,
              color: Colors.amber,
            ),
          ),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return CardBookbuilder(index);
          },
          itemCount: listBook.getListLength(),
        ),
      ),
    );
  }
}

class CardBookbuilder extends StatelessWidget {
  CardBookbuilder(this.index);
  final int index;

  @override
  Widget build(BuildContext context) {
    return ListBookCard(
      rating: listBook.getRating(index),
      distance: listBook.getDistance(index),
      title: listBook.getTitle(index),
      author: listBook.getAuthor(index),
      condition: listBook.getCondition(index),
      image: listBook.getImage(index),
    );
  }
}
