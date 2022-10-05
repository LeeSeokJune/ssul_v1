import 'package:flutter/material.dart';

final line = BoxDecoration(border: Border.all(color: Colors.blue));
final blueRadiusLine = BoxDecoration(
  border: Border.all(color: Colors.blue),
  borderRadius: BorderRadius.circular(10),
);

final buttonStyle = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(10),
  boxShadow: [
    BoxShadow(
      color: Colors.grey,
      offset: Offset(1, 3),
      blurRadius: 5.0,
      spreadRadius: -1.0,
    ),
    BoxShadow(
      color: Colors.white,
    ),
  ],
);
