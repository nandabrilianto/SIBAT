import 'package:flutter/material.dart';

class Style {
  static final baseTextStyle = const TextStyle(
    fontFamily: 'Montserrat',
  );
  static final smallTextStyle = commonTextStyle.copyWith(
    fontSize: 6.0,
  );
  static final commonTextStyle = baseTextStyle.copyWith(
    color: Colors.white,
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
  );
  static final titleTextStyle = baseTextStyle.copyWith(
    color: Colors.white,
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
  );
  static final headerTextStyle = baseTextStyle.copyWith(
    color: Colors.white,
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
  );
}