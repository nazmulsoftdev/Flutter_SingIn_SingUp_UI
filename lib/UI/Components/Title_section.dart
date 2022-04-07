import 'package:flutter/material.dart';

Widget TitleSection(name) {
  return Container(
    alignment: Alignment.centerLeft,
    child: Text(
      name,
      style: TextStyle(fontSize: 17),
    ),
  );
}
