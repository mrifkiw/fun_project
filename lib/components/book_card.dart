import 'package:flutter/material.dart';
import 'icon_withLabels.dart';

class ListBookCard extends StatelessWidget {
  final String rating;
  final String distance;
  final String title;
  final String author;
  final String condition;
  final String image;

  ListBookCard(
      {this.rating,
      this.distance,
      this.title,
      this.author,
      this.condition,
      this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 17, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        color: Color.fromRGBO(245, 190, 28, 0.2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(21, 14, 0, 14.15),
            child: Image.asset(this.image),
          ),
          Container(
            width: 255.1,
            margin: EdgeInsets.fromLTRB(20, 15, 10, 9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //rating dan location
                Row(
                  children: [
                    IconWithLabel(
                      icon: Icons.star_rounded,
                      label: this.rating,
                      color: Color.fromRGBO(245, 190, 28, 1),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    IconWithLabel(
                      icon: Icons.location_on,
                      label: this.distance,
                      color: Colors.red,
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 2, 5, 0),
                  padding: EdgeInsets.zero,
                  child: SizedBox(
                    // width: 225,
                    child: Text(
                      this.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      style: TextStyle(
                        fontFamily: 'Mulish',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 1),
                          child: Text(
                            this.author,
                            style: TextStyle(
                              fontFamily: 'Mulish',
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Color.fromRGBO(0, 0, 0, 0.54),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Kondisi buku ${this.condition}",
                            style: TextStyle(
                              fontFamily: 'Mulish',
                              fontSize: 8,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              color: Color.fromRGBO(250, 120, 74, 0.54),
                            ),
                          ),
                        ),
                        SizedBox(height: 8.0),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              height: 16,
                              minWidth: 65,
                              color: Color(0xFFFA784A),
                              onPressed: () {},
                              child: Container(
                                padding: EdgeInsets.zero,
                                child: Text(
                                  'Sewa',
                                  style: TextStyle(
                                    fontSize: 8.0,
                                    color: Color.fromRGBO(255, 255, 255, 0.54),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              height: 16,
                              minWidth: 5,
                              color: Color(0xFFF5BE1C),
                              onPressed: () {},
                              child: Container(
                                padding: EdgeInsets.zero,
                                child: Icon(
                                  Icons.delete,
                                  size: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
