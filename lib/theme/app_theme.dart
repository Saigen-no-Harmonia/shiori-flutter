import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static const String _fontFamily = 'NotoSerifJP';

  static final bodyBold = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.bold,
    fontFamily: _fontFamily,
  );

  static final body = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.normal,
    fontFamily: _fontFamily,
  );

  static final calloutBold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    fontFamily: _fontFamily,
  );

  static final caption = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    fontFamily: _fontFamily,
  );

  static final headline = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.normal,
    fontFamily: _fontFamily,
  );

  static final largeTitleBold = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.bold,
    fontFamily: _fontFamily,
  );

  static final title2Bold = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    fontFamily: _fontFamily,
  );

  static final title3Bold = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    fontFamily: _fontFamily,
  );

  static final title3 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    fontFamily: _fontFamily,
  );

  static final titleBold = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    fontFamily: _fontFamily,
  );
}
