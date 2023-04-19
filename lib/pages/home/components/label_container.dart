import 'package:flutter/material.dart';
import 'package:test_yakadir/models/yakadire_card.dart';

class LabelContainer extends StatelessWidget {
  final Label label;

  const LabelContainer({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: label.backgroundColor, borderRadius: BorderRadius.circular(5)),
      child: Text(
        label.text,
        style: TextStyle(color: label.textColor, fontWeight: FontWeight.w800),
      ),
    );
  }
}
