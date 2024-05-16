import 'package:flutter/material.dart';
import 'package:study_buddy/color/colors.dart';

class TextStylling {
  static TextStyle s_title = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 25,
    color: primarygray,
  );
  static TextStyle title = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 26,
    color: primaryblack,
  );
  static TextStyle b_text1 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 25,
    color: primarygray,
  );
  static TextStyle fontstyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: primarygray,
  );
  static TextStyle buttontext = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 18,
    color: primaryblack,
  );
  static TextStyle buttontext2 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 18,
    color: primarywhite,
  );
}

class StudentData {
  static String s_name = "";
  static String s_grid = "";
  static String s_std = "";

  static bool start = true;
}
