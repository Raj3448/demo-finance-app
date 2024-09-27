import 'package:flutter/material.dart';

BoxDecoration commonBoxDecoration(
    {double borderRadius = 20.0,
    Color color = Colors.white,
    double spreadRadius = 1.0,
    double blurRadius = 0.0,
    Offset offset = const Offset(9, 9),
    double borderWidth = 2.0,
    Color borderColor = Colors.black,
    double boxShadowOpacity = 0.8,
    BoxShape? boxShape}) {
  return BoxDecoration(
    borderRadius: boxShape != null ? null : BorderRadius.circular(borderRadius),
    color: color,
    shape: boxShape ?? BoxShape.rectangle,
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(boxShadowOpacity),
        spreadRadius: spreadRadius,
        blurRadius: blurRadius,
        offset: offset,
      ),
    ],
    border: Border.all(width: borderWidth, color: borderColor),
  );
}
