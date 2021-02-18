import 'package:flutter/material.dart';
import 'package:fun_project/components/icon_withLabels.dart';

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

class BookCard extends StatelessWidget {
  const BookCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: 17.0,
        vertical: 10.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        color: Color.fromRGBO(245, 190, 28, 0.2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              //Gambar Buku
              Padding(
                padding: EdgeInsets.fromLTRB(21, 14, 20, 14.15),
                child: Image.asset('./images/fisika.jpg'),
              ),
              //Detail Buku
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //rating dan location
                  Row(
                    children: [
                      IconWithLabel(
                        icon: Icons.star_rounded,
                        label: '4.6',
                        color: Color.fromRGBO(245, 190, 28, 1),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      IconWithLabel(
                        icon: Icons.location_on,
                        label: '0.1 km',
                        color: Colors.red,
                      )
                    ],
                  ),
                  //Detail author, bookname, and available
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5.0),
                        child: Text(
                          'FISIKA',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 2.0),
                        child: Text(
                          'Ni Ketut Lasmi',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Color.fromRGBO(0, 0, 0, 0.54),
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Kondisi buku baik',
                          style: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: Color.fromRGBO(250, 120, 74, 0.54),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(right: 10.0),
                child: Container(
                  margin: EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        height: 16,
                        minWidth: 65,
                        color: Color(0xFFFA784A),
                        onPressed: () {},
                        child: Container(
                          padding: EdgeInsets.zero,
                          child: Text(
                            'Sewa',
                            style: TextStyle(
                              fontSize: 7.0,
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
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        height: 16,
                        minWidth: 5,
                        color: Color(0xFFFA784A),
                        onPressed: () {},
                        child: Container(
                          padding: EdgeInsets.zero,
                          child: Icon(
                            Icons.restore_from_trash,
                            size: 10,
                            color: Color.fromRGBO(255, 255, 255, 0.54),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
