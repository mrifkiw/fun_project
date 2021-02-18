import 'book_condition.dart';

class DetailsBook {
  final String rating;
  final String distance;
  final String title;
  final String author;
  final Conditions condition;
  final String image;

  DetailsBook(this.rating, this.distance, this.title, this.author,
      this.condition, this.image);
}
