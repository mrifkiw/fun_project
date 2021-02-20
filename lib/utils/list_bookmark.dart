import 'package:fun_project/utils/book_condition.dart';

import 'details_book.dart';
import 'book_condition.dart';

class ListBookmark {
  final List<DetailsBook> _cardBookDetails = [
    DetailsBook("4.6", "1.0", "FISIKA", "Ni Ketut Lasmi",
        Conditions.kurang_baik, "./images/fisika.jpg"),
    DetailsBook("4.6", "1.0", "FISIKA", "Ni Ketut Lasmi",
        Conditions.kurang_baik, "./images/kimia.jpg"),
    DetailsBook("4.6", "1.0", "FISIKA", "Ni Ketut Lasmi",
        Conditions.kurang_baik, "./images/mtk.jpg"),
    DetailsBook("4.6", "1.0", "FISIKA", "Ni Ketut Lasmi",
        Conditions.kurang_baik, "./images/pkn.jpg"),
    DetailsBook("4.6", "1.0", "FISIKA", "Ni Ketut Lasmi",
        Conditions.kurang_baik, "./images/fisika.jpg"),
    DetailsBook("4.6", "1.0", "FISIKA", "Ni Ketut Lasmi",
        Conditions.kurang_baik, "./images/kimia.jpg"),
    DetailsBook("4.6", "1.0", "FISIKA", "Ni Ketut Lasmi",
        Conditions.kurang_baik, "./images/mtk.jpg"),
    DetailsBook("4.6", "1.0", "FISIKA", "Ni Ketut Lasmi",
        Conditions.kurang_baik, "./images/pkn.jpg"),
  ];
  int getListLength() => this._cardBookDetails.length;
  String getRating(int index) => this._cardBookDetails[index].rating;
  String getDistance(int index) => this._cardBookDetails[index].distance;
  String getTitle(int index) => this._cardBookDetails[index].title;
  String getAuthor(int index) => this._cardBookDetails[index].author;
  String getCondition(int index) =>
      this._cardBookDetails[index].condition.enumValue;
  String getImage(int index) => this._cardBookDetails[index].image;
}
