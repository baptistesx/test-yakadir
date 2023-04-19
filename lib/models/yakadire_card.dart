import 'package:flutter/material.dart';

class Label {
  final Color backgroundColor;
  final Color textColor;
  final String text;

  Label({
    required this.text,
    required this.textColor,
    required this.backgroundColor,
  });
}

class YakadirCardData {
  final List<Label> labels;
  final String question;
  final int numberOfAnswers;

  const YakadirCardData({
    required this.labels,
    required this.question,
    required this.numberOfAnswers,
  });
}
