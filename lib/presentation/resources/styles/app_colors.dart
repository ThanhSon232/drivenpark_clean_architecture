import 'package:flutter/material.dart';

class AppColors{
  static Color transparent = hexToColor("#00000000");
  static Color dimBackground = hexToColor("#dfdfdf");
  static Color white = hexToColor("#ffffff");
  static Color white50 = hexToColor("#FBFBFB");
  static Color white75 = hexToColor("#f0f0f0");
  static Color white100 = hexToColor("#eaeaea");
  static Color white200 = hexToColor("#e0e0e0");
  static Color white300 = hexToColor("#dadada");
  static Color white400 = hexToColor("#999999");
  static Color white500 = hexToColor("#858585");
  static Color blue50 = hexToColor("#eef0ff");
  static Color blue100 = hexToColor("#9da8ff");
  static Color blue200 = hexToColor("#7383ff");
  static Color blue300 = hexToColor("#5669ff");
  static Color blue400 = hexToColor("#3c4ab3");
  static Color violet75 = hexToColor("#9E9CA6");
  static Color violet100 = hexToColor("#767381");
  static Color violet200 = hexToColor("#3a364b");
  static Color violet300 = hexToColor("#120d26");
  static Color violet400 = hexToColor("#0d091b");
  static Color violet500 = hexToColor("#0b0817");
  static Color green = hexToColor("#7BD6AA");
  static Color yellow300 = hexToColor("#ffd233");
  static Color red300 = hexToColor("#F1573D");
  static Color red100 = hexToColor("#F79E8E");

  static Color hexToColor(String hexString, {String alphaChannel = 'FF'}) {
    return Color(int.parse(hexString.replaceFirst('#', '0x$alphaChannel')));
  }
}