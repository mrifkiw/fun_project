import 'package:flutter/material.dart';

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
          Container(
            height: 100,
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              horizontal: 17.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(2),
              ),
              color: Color.fromRGBO(245, 190, 28, 0.2),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(21, 14, 20, 14.15),
                  child: Image.asset('./images/fisika.jpg'),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 7.0),
                          child: Text(
                            'FISIKA',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
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
                SizedBox(
                  width: 37.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 7, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlatButton(
                            textColor: Color.fromRGBO(255, 255, 255, 0.54),
                            onPressed: () {},
                            child: Container(
                              margin: EdgeInsets.zero,
                              height: 16,
                              width: 65,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                color: Color(0xFFFA784A),
                              ),
                              child: Center(
                                child: Text(
                                  'Sewa',
                                  style: TextStyle(
                                    fontSize: 8.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          FlatButton(
                            textColor: Color.fromRGBO(255, 255, 255, 0.54),
                            onPressed: () {},
                            child: Container(
                              margin: EdgeInsets.zero,
                              height: 16,
                              width: 26,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                color: Color(0xFFF5BE1C),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.restore_from_trash,
                                  size: 10,
                                  color: Color.fromRGBO(255, 255, 255, 0.54),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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

class IconWithLabel extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const IconWithLabel({
    this.label,
    this.icon,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 14.0),
      child: Row(
        children: [
          Icon(
            this.icon,
            size: 14,
            color: this.color,
          ),
          SizedBox(
            width: 2,
          ),
          Text(
            this.label,
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
