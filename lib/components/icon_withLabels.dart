import 'package:flutter/material.dart';

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
            style: TextStyle(
              fontSize: 10,
              fontFamily: 'Mulish',
            ),
          ),
        ],
      ),
    );
  }
}
