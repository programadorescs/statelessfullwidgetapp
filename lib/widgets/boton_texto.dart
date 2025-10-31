import 'package:flutter/material.dart';

Column BuildButton(String text, IconData iconData) {
  Color primaryColor = Colors.blue;
  return Column(
    children: [
      Icon(iconData, color: primaryColor, size: 28),
      SizedBox(height: 4),
      Text(
        text.toUpperCase(),
        style: TextStyle(color: primaryColor, fontSize: 12),
      ),
    ],
  );
}
